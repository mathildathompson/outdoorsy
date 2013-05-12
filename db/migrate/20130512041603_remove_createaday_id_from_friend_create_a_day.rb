class RemoveCreateadayIdFromFriendCreateADay < ActiveRecord::Migration
  def up
    remove_column :friend_create_a_days, :createaday_id
  end

  def down
    add_column :friend_create_a_days, :createaday_id, :integer
  end
end
