class CreateIllustrations < ActiveRecord::Migration[7.0]
  def change
    create_table :examples do |t|
      t.belongs_to :requirement, null: false, foreign_key: true
      t.string :title
      t.boolean :good, null: false, default: 1
      t.text :description

      t.timestamps
    end
  end
end
