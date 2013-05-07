class AddAcreageToOutdoorArea < ActiveRecord::Migration
  def change
    add_column :outdoor_areas, :acreage, :float
  end
end
