class AddWebsiteIdToBloopers < ActiveRecord::Migration[7.0]
  def change
    add_reference :examples, :website, null: false, foreign_key: true
  end
end
