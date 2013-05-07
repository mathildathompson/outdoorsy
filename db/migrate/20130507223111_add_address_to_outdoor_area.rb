class AddAddressToOutdoorArea < ActiveRecord::Migration
  def change
    add_column :outdoor_areas, :address, :string
  end
end
