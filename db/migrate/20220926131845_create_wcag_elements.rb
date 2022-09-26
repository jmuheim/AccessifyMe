class CreateWcagElements < ActiveRecord::Migration[7.0]
  def change
    create_table :wcag_elements do |t|
      t.string :name
      t.string :level
      t.text :description
      t.bigint :parent_id
      t.integer :position
      t.float :wcag_version
      t.string :type

      t.timestamps

      t.index ["parent_id"], name: "index_parent_id_on_wcag_elements_fk"
    end

    add_foreign_key "wcag_elements", "wcag_elements", column: "parent_id", name: "success_criteria_parent_id_fk"
  end
end
