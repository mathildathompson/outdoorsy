class RemoveLatitudeFromOutdoorArea < ActiveRecord::Migration
  def up
    remove_column :outdoor_areas, :latitude
  end

  def down
    add_column :outdoor_areas, :latitude, :string
  end
end
