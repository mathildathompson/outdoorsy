class AddCreateADayIdToFriendCreateADay < ActiveRecord::Migration
  def change
    add_column :friend_create_a_days, :create_a_day_id, :integer
  end
end
