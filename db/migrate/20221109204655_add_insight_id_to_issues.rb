class AddInsightIdToIssues < ActiveRecord::Migration[7.0]
  def change
    add_reference :issues, :insight, null: false, foreign_key: true
  end
end
