class Pattern < ApplicationRecord
  belongs_to :insight
  has_and_belongs_to_many :anti_patterns, join_table: "patterns_to_anti_patterns"

  def icon
    "✅"
  end
end
