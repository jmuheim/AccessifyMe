class AddRelevantForDesignersToVirtues < ActiveRecord::Migration[7.0]
  def change
    add_column :virtues, :relevant_for_designers, :boolean
  end
end
