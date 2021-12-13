class CreateStretches < ActiveRecord::Migration[5.2]
  def change
    create_table :stretches do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.float :start_place_lat
      t.float :start_place_lon
      t.float :end_place_lat
      t.float :end_place_lon
      t.references :route, foreign_key: true

      t.timestamps
    end
  end
end
