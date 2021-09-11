class AddItemIdToScheduledItem < ActiveRecord::Migration[6.1]
  def change
    add_column :scheduled_items, :item_id, :integer
    add_index :scheduled_items, :item_id
  end
end
