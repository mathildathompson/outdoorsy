class AddLongitudeToOutdoorArea < ActiveRecord::Migration
  def change
    add_column :outdoor_areas, :longitude, :float
  end
end
