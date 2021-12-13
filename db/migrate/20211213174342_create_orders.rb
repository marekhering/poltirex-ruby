class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :delivery_time
      t.float :departure_place_lat
      t.float :departure_place_lon
      t.float :destination_place_lat
      t.float :destination_place_lon
      t.float :payload_weight

      t.timestamps
    end
  end
end
