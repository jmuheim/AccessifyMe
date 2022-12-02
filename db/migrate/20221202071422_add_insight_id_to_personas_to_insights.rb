class AddInsightIdToPersonasToInsights < ActiveRecord::Migration[7.0]
  def change
    add_reference :personas_to_insights, :insight, null: false, foreign_key: true
  end
end