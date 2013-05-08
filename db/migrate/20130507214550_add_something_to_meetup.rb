class AddSomethingToMeetup < ActiveRecord::Migration
  def change
    add_column :meetups, :name, :string
    add_column :meetups, :latitude, :float
    add_column :meetups, :longitude, :float
    add_column :meetups, :zipcode, :integer
    add_column :meetups, :topic, :string
    add_column :meetups, :event_url, :string
    add_column :meetups, :description, :text
    add_column :meetups, :yes_rsvp_count, :integer
  end
end
