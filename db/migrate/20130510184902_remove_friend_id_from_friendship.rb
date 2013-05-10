class RemoveFriendIdFromFriendship < ActiveRecord::Migration
  def up
    remove_column :friendships, :friend_id
  end

  def down
    add_column :friendships, :friend_id, :string
  end
end
