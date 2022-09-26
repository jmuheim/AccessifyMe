class Requirement < ApplicationRecord
  belongs_to :video

  has_many :examples

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
