class Insight < ApplicationRecord
  belongs_to :virtue

  has_many :patterns

  has_many :benefits, class_name: "PersonaToInsight"

  def to_param
    "#{id}-#{short_name.parameterize}"
  end
end
