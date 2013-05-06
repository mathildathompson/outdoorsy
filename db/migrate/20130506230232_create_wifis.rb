class CreateWifis < ActiveRecord::Migration
  def change
    create_table :wifis do |t|

      t.timestamps
    end
  end
end
