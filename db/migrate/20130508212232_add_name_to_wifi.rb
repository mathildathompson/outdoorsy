class AddNameToWifi < ActiveRecord::Migration
  def change
    add_column :wifis, :name, :string
  end
end
