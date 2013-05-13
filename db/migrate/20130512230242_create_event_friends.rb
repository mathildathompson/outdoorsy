class CreateEventFriends < ActiveRecord::Migration
  def change
    create_table :event_friends do |t|
      t.integer :friend_id
      t.integer :event_id

      t.timestamps
    end
  end
end
