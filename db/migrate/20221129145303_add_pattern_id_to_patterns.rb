class AddPatternIdToPatterns < ActiveRecord::Migration[7.0]
  def change
    add_reference :patterns, :pattern, null: true, foreign_key: true
  end
end
