class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :mission
      t.text :description
      t.string :logo

      t.timestamps
    end
  end
end
