class AddLongitudeToOutdoorArea < ActiveRecord::Migration
  def change
    add_column :outdoor_areas, :longitude, :string
  end
end
