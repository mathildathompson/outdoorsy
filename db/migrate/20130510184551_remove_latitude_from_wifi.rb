class RemoveLatitudeFromWifi < ActiveRecord::Migration
  def up
    remove_column :wifis, :RemoveLongitudeFromWifi
  end
end
