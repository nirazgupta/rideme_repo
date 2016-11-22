class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
     t.datetime :EventDate
     t.number 'EventID'
     t.string 'EventLocationGPS'
     t.string 'EventLocationFriendly'
     t.string 'ToLocation'
     t.string 'FromLocation'
     t.integer 'QuantityCanCarry'
     t.string 'OneWayTrip'
     t.integer 'EventBufferTime'
     t.string 'EventComments'
     t.timestamps null: false
    end
  end
end
