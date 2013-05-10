class RemoveLongitudeFromOutdoorArea < ActiveRecord::Migration
  def up
    remove_column :outdoor_areas, :longitude
  end

  def down
    add_column :outdoor_areas, :longitude, :string
  end
end
