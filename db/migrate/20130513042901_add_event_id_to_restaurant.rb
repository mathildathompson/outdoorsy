class AddEventIdToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :event_id, :integer
  end
end
