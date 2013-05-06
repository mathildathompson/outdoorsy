class CreateOutdoorAreas < ActiveRecord::Migration
  def change
    create_table :outdoor_areas do |t|

      t.timestamps
    end
  end
end
