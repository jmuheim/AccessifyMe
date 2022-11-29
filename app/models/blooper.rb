class Blooper < ApplicationRecord
  mount_uploader :screenshot, ScreenshotUploader

  belongs_to :anti_pattern
  belongs_to :website

  def icon
    pattern.icon
  end
end
