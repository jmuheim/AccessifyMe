class AddScreenshotToIssues < ActiveRecord::Migration[7.0]
  def change
    add_column :issues, :screenshot, :string
  end
end
