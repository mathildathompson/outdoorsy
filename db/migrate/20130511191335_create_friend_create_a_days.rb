class CreateFriendCreateADays < ActiveRecord::Migration
  def change
    create_table :friend_create_a_days do |t|
      t.integer :friend_id
      t.integer :create_a_day_id

      t.timestamps
    end
  end
end
