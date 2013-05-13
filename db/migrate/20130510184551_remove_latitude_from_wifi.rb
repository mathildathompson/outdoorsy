class RemoveLatitudeFromWifi < ActiveRecord::Migration
  def up
    remove_column :wifis, :AddLongitudeToWifi
  end
end
