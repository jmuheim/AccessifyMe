class Insight < ApplicationRecord
  belongs_to :virtue

  has_many :patterns

  def to_param
    "#{id}-#{short_name.parameterize}"
  end
end
