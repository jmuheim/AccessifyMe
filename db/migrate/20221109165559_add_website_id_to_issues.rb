class AddWebsiteIdToIssues < ActiveRecord::Migration[7.0]
  def change
    add_reference :issues, :website, null: false, foreign_key: true
  end
end
