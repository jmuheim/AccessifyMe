class AddAntiPatternIdToConsequences < ActiveRecord::Migration[7.0]
  def change
    add_reference :consequences, :anti_pattern, null: false, foreign_key: true
  end
end
