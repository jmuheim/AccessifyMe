class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.text :lead
      t.text :description
      t.string :youtube_id

      t.timestamps
    end
  end
end
