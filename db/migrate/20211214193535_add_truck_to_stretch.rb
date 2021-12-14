class AddTruckToStretch < ActiveRecord::Migration[5.2]
  def change
    add_reference :stretches, :truck, foreign_key: true
  end
end
