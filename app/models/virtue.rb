class Virtue < ApplicationRecord
  has_many :insights

  def to_param
    "#{id}-#{short_name.parameterize}"
  end
end
