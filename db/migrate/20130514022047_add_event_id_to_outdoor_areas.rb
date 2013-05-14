class AddEventIdToOutdoorAreas < ActiveRecord::Migration
  def change
    add_column :outdoor_areas, :event_id, :integer
  end
end
