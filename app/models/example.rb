class Example < ApplicationRecord
  extend Enumerize
  enumerize :demo_or_real, in: [:demo, :real]

  scope :demos, -> { where(demo_or_real: "demo") }
  scope :real, -> { where(demo_or_real: "real") }

  mount_uploader :screenshot, ScreenshotUploader

  belongs_to :illustration
  belongs_to :website

  def icon
    illustration.icon
  end
end
