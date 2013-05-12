class CreateDayOuts < ActiveRecord::Migration
  def change
    create_table :day_outs do |t|
      t.string :date
      t.integer :user_id

      t.timestamps
    end
  end
end
