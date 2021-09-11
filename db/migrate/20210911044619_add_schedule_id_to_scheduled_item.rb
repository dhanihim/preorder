class AddScheduleIdToScheduledItem < ActiveRecord::Migration[6.1]
  def change
    add_column :scheduled_items, :schedule_id, :integer
    add_index :scheduled_items, :schedule_id
  end
end
