class AddIllustrationIdToExamples < ActiveRecord::Migration[7.0]
  def change
    add_reference :examples, :illustration, null: false, foreign_key: true
  end
end
