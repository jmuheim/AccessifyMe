class Insight < ApplicationRecord
  has_many :examples
  belongs_to :virtue

  def to_param
    "#{id}-#{short_name.parameterize}"
  end
end
