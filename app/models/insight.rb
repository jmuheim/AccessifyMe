class Insight < ApplicationRecord
  belongs_to :virtue

  has_many :illustrations
  has_many :do_illustrations
  has_many :dont_illustrations

  def to_param
    "#{id}-#{short_name.parameterize}"
  end
end
