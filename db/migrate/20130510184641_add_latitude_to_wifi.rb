class AddLatitudeToWifi < ActiveRecord::Migration
  def change
    add_column :wifis, :latitude, :float
    add_column :wifis, :longitude, :float
  end
end
