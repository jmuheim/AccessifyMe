class AddPatternIdToAntiPatterns < ActiveRecord::Migration[7.0]
  def change
    add_reference :anti_patterns, :pattern, null: false, foreign_key: true
  end
end
