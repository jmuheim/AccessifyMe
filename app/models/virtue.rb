class Virtue < ApplicationRecord
  def to_param
    "#{id}-#{name.parameterize}"
  end
end
