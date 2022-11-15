class AddIllustrationIdToIssues < ActiveRecord::Migration[7.0]
  def change
    add_reference :issues, :illustration, null: false, foreign_key: true
  end
end
