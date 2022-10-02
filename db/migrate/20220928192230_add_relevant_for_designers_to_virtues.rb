class AddRelevantForDesignersToVirtues < ActiveRecord::Migration[7.0]
  def change
    add_column :virtues, :inspires_designers, :boolean
  end
end
