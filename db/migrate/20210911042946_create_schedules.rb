class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.datetime :date_open
      t.datetime :date_close

      t.timestamps
    end
  end
end
