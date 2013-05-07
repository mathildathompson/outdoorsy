class AddLatitudeToOutdoorArea < ActiveRecord::Migration
  def change
    add_column :outdoor_areas, :latitude, :string
  end
end
