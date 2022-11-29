class AntiPattern < ApplicationRecord
  belongs_to :pattern
  has_many :bloopers

  def icon
    "🚨"
  end
end
