class AddAntiPatternIdToBloopers < ActiveRecord::Migration[7.0]
  def change
    add_reference :bloopers, :anti_pattern, null: false, foreign_key: true
  end
end
