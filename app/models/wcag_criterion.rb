class WcagCriterion < WcagElement
  has_many :requirements, dependent: :restrict_with_error
  validate :parent_level_must_not_be_above_previous, if: -> { sub_criterion? && errors[:parent].empty? },
                                                     on: :update

  def name_with_details
    elements = ["#{tree_prefix} #{name}"]
    elements << level_text if official_criterion?
    elements.join ' - '
  end

  def tree_prefix
    ancestors_prefix = ancestors.map(&:position).reverse.join '.'

    own_prefix = if official_criterion?
                   ".#{position}"
                 else  # For sub, generate character from number, e.g. 1 => a, 2 => b, 3 => c
                   (position + 96).chr # 97 is position of "a" in ASCII sequence
                 end

    ancestors_prefix + own_prefix
  end

  def matches_level?(level_to_compare_with)
    own_level = if sub_criterion?
                  parent.level
                else
                  level
                end

    own_level <= level_to_compare_with
  end

  private

  def needed_parent_type
    official_criterion? ? WcagGuideline : WcagCriterion
  end

  def parent_level_must_not_be_above_previous
    parent_was = WcagElement.find(parent_id_was)

    if parent.level.length > parent_was.level.length
      errors.add :parent, :level_below_previous, needed: parent_was.level_text, actual: parent.level_text
    end
  end
end
