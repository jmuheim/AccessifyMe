class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :teaser
      t.text :description

      t.timestamps
    end
  end
end
