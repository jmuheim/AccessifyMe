class CreateRequirements < ActiveRecord::Migration[7.0]
  def change
    create_table :requirements do |t|
      t.belongs_to :video, null: false, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
