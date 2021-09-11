class CreateScheduledItems < ActiveRecord::Migration[6.1]
  def change
    create_table :scheduled_items do |t|
      t.integer :current_cost
      t.integer :current_price
      t.string :description

      t.timestamps
    end
  end
end
