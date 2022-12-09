# The WCAG elements tree is based 1:1 on the official WCAG 2.x (extended with a 4th level of custom criteria).
#
# WCAG 2.1: https://www.w3.org/TR/WCAG21/
#
# The tree structure looks like this:
#
# - Level 1: Principles (e.g. "Principle 1: Perceivable")
#     - Implemented as STI class `WcagPrinciple`
# - Level 2: Guidelines (e.g. "Guideline 1.1: Provide text alternatives...")
#     - Implemented as STI class `WcagGuideline`
# - Level 3: Criteria (e.g. "1.1.1 Non-text content")
#     - Implemented as STI class `WcagCriterion` (together level 4)
# - Level 4: Sub criteria (e.g. "1.3.1a Heading structure")
#     - Implemented as STI class `WcagCriterion` (together level 3)
#
# Only criteria (level 3) have a conformance level (A, AA, AAA). Only criteria (level 3) and sub criteria (level 4) can have requirements assigned.
class WcagElement < ApplicationRecord
  WCAG_MIN_VERSION = 2.0

  extend FriendlyId
  friendly_id :name, use: :slugged

  extend Enumerize

  extend ActsAsTree::TreeWalker

  extend Mobility

  def to_param
    "#{id}-#{name.parameterize}"
  end

  def name_with_tree_prefix
    "#{tree_prefix} #{name}"
  end

  has_many :video_to_wcag_elements
  has_many :videos, through: :video_to_wcag_elements

  enumerize :level, in: [:a, :aa, :aaa]

  validates_presence_of :type # Disable instantiation of base class, see https://stackoverflow.com/questions/2850418

  validates :parent, absence:  true, if:     -> { principle? }
  validates :parent, presence: true, unless: -> { principle? }

  validate :parent_type_must_be_valid, unless: -> { errors[:parent].any? }

  validates :level, presence: true, if:     -> { official_criterion? }
  validates :level, absence:  true, unless: -> { official_criterion? }

  validate :parent_must_not_change, unless: -> { sub_criterion? }, on: :update

  # As `version` is a reserved word in Rails, we need to name it `wcag_version`
  validates :wcag_version, presence: true, if: -> { official? }
  validates :wcag_version, absence:  true, if: -> { sub_criterion? }
  validate :wcag_version_must_be_at_least_parent_one, if: -> { official? && parent && errors[:wcag_version].empty? }
  validates :wcag_version, numericality: {greater_than_or_equal_to: WCAG_MIN_VERSION}, if: -> { official? }

  validates :name, presence: true,
                   uniqueness: {scope: :parent_id, case_sensitive: false}

  validates :creator_id, presence: true

  acts_as_tree order: :position, dependent: :restrict_with_error
  acts_as_list scope: :parent_id

  translates :name, :explains_why, :lead, :description

  def self.model_name
    ActiveModel::Name.new(self, nil, 'WcagElement') # Make sure that STI models use the same namespace
  end

  def self.tree
    wcag_criteria = []

    walk_tree do |wcag_criterion, level|
      wcag_criteria << wcag_criterion
    end

    wcag_criteria
  end

  def self.official_tree
    tree.select do |wcag_criterion|
      !wcag_criterion.sub_criterion?
    end
  end

  def self.criteria_tree
    tree.select do |wcag_criterion|
      wcag_criterion.criterion?
    end
  end

  def self.official_criteria_tree
    tree.select do |wcag_criterion|
      wcag_criterion.official_criterion?
    end
  end

  def self.criteria_tree_for_wcag_version(wcag_version)
    criteria_tree.select do |wcag_criterion|
      wcag_criterion = wcag_criterion.parent if wcag_criterion.sub_criterion?

      wcag_criterion.wcag_version <= wcag_version
    end
  end

  def principle?
    is_a? WcagPrinciple
  end

  def guideline?
    is_a? WcagGuideline
  end

  def criterion?
    is_a? WcagCriterion
  end

  def official_criterion?
    criterion? && !sub_criterion?
  end

  def sub_criterion?
    parent.present? && parent.criterion?
  end

  def official?
    principle? || guideline? || official_criterion?
  end

  def to_partial_path
    'wcag_element'
  end

  def sti_model_name_human
    I18n.t "activerecord.models.#{self.class.to_s.underscore}.one" # See https://stackoverflow.com/questions/57688541
  end

  def self.available_wcag_versions
    wcag_versions = distinct.pluck(:wcag_version)
    wcag_versions.compact.uniq.sort
  end

  def matches_wcag_version?(wcag_version_to_compare_with)
    own_wcag_version = if sub_criterion?
                         parent.wcag_version
                       else
                         wcag_version
                       end

    own_wcag_version <= wcag_version_to_compare_with
  end

  private

  def needed_parent_type
    nil
  end

  def parent_type_must_be_valid
    if needed_parent_type
      errors.add :parent, :bad_type, needed: needed_parent_type, actual: parent.class unless parent.is_a? needed_parent_type
    end
  end

  def parent_must_not_change
    if parent_id_changed?
      errors.add :parent, :must_not_change_on_update
    end
  end

  def wcag_version_must_be_at_least_parent_one
    if wcag_version < parent.wcag_version
      errors.add :wcag_version, :below_parent, needed: parent.wcag_version
    end
  end
end
