class AddAddressToWifi < ActiveRecord::Migration
  def change
    add_column :wifis, :address, :string
  end
end
