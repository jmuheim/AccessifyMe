class Insight < ApplicationRecord
  has_many :examples

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
