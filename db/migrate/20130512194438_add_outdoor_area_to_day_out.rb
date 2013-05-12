class AddOutdoorAreaToDayOut < ActiveRecord::Migration
  def change
    add_column :day_outs, :outdoor_area_id, :integer
  end
end
