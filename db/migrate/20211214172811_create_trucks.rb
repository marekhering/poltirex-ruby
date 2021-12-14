class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.float :height
      t.float :capacity
      t.float :position_lat
      t.float :position_lon

      t.timestamps
    end
  end
end
