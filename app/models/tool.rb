class Tool < ApplicationRecord
  has_many :video_to_tools
  has_many :videos, through: :video_to_tools

  def to_param
    "#{id}-#{(short_name || name).parameterize}"
  end
end
