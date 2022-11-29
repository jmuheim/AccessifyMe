class AddPatternIdToPatternsToAntiPatterns < ActiveRecord::Migration[7.0]
  def change
    add_reference :patterns_to_anti_patterns, :pattern, null: false, foreign_key: true
  end
end
