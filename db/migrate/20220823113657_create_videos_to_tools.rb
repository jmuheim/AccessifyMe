class CreateVideosToTools < ActiveRecord::Migration[7.0]
  def change
    create_table :videos_to_tools do |t|
      t.belongs_to :video, null: false, foreign_key: true
      t.belongs_to :tool, null: false, foreign_key: true
      t.string :purpose

      t.timestamps
    end
  end
end
