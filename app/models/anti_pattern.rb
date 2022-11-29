class AntiPattern < ApplicationRecord
  has_many :bloopers
  has_and_belongs_to_many :patterns, join_table: "patterns_to_anti_patterns"

  def icon
    "🚨"
  end
end
