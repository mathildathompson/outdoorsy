class AddLocationToWifi < ActiveRecord::Migration
  def change
    add_column :wifis, :location, :string
  end
end
