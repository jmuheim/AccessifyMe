class VideoToWcagElement < ApplicationRecord
  belongs_to :video
  belongs_to :wcag_element
end
