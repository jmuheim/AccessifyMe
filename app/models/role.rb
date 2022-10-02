class Role < ApplicationRecord
  def slug
    name.parameterize
  end
end
