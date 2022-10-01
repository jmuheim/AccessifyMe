class Video < ApplicationRecord
  has_many :video_to_tools
  has_many :tools, through: :video_to_tools

  has_many :video_to_wcag_elements
  has_many :wcag_elements, through: :video_to_wcag_elements

  has_many :requirements

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
