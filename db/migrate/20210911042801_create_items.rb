class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.integer :cost
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
