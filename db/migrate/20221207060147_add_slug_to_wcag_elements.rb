class AddSlugToWcagElements < ActiveRecord::Migration[7.0]
  def change
    add_column :wcag_elements, :slug, :string
    add_index :wcag_elements, :slug, unique: true
  end
end
