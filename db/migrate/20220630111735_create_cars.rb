class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :engine_volume
      t.integer :price_last_year
      t.integer :price_now

      t.timestamps
    end
  end
end
