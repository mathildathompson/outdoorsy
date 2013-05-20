class RemoveLatitudeFromRestaurants < ActiveRecord::Migration
  def up
    remove_column :restaurants, :latitude
  end

  def down
    add_column :restaurants, :latitude, :integer
  end
end
