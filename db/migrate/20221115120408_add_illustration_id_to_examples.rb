class AddPatternIdToBloopers < ActiveRecord::Migration[7.0]
  def change
    add_reference :examples, :pattern, null: false, foreign_key: true
  end
end
