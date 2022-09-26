class CreateVideosToWcagElements < ActiveRecord::Migration[7.0]
  def change
    create_table :videos_to_wcag_criteria do |t|
      t.belongs_to :video, null: false, foreign_key: true
      t.belongs_to :wcag_element, null: false, foreign_key: true
      t.string :purpose

      t.timestamps
    end
  end
end
