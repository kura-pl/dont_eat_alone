class AddIndexToOpeningClosing < ActiveRecord::Migration[5.0]
  def change
    add_column :opening_closings, :restaurant_id, :integer
    add_index :opening_closings, :restaurant_id
  end
end
