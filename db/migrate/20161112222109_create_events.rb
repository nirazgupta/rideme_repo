class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
     t.datetime 'EventDate'
     t.string 'EventLocationGPS'
     t.string 'EventLocationFriendly'
     t.string 'ToLocation'
     t.string 'FromLocation'
     t.string 'QuantityCanCarry'
     t.string 'OneWayTrip'
     t.integer 'EventBufferTime'
     t.string 'EventComments'
     t.timestamps null: false
    end
  end
end
