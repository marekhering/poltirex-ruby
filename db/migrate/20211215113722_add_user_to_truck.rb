class AddUserToTruck < ActiveRecord::Migration[5.2]
  def change
    add_reference :trucks, :user, foreign_key: true
  end
end
