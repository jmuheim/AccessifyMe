class Example < ApplicationRecord
  extend Enumerize
  enumerize :kind, in: [:demo, :real]

  scope :demos, -> { where(kind: "demo") }
  scope :real, -> { where(kind: "real") }

  mount_uploader :screenshot, ScreenshotUploader

  belongs_to :illustration
  belongs_to :website

  def icon
    illustration.icon
  end
end
