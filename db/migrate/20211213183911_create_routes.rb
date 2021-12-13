class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
