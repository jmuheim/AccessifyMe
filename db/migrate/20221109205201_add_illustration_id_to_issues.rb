class AddPatternIdToIssues < ActiveRecord::Migration[7.0]
  def change
    add_reference :issues, :pattern, null: false, foreign_key: true
  end
end
