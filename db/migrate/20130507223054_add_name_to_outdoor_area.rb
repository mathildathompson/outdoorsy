class AddNameToOutdoorArea < ActiveRecord::Migration
  def change
    add_column :outdoor_areas, :name, :string
  end
end
