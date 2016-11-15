class CreateMovies < ActiveRecord::Migration
  def change
    # #http://stackoverflow.com/questions/16388756/create-new-table-in-ruby-on-rails
    create_table :tblPerson do |t|
    t.primary_key 'PersonID'
    t.string 'FirstName'
    t.string 'MiddleInitial'
    t.string 'LastName'     
    t.string 'DateOfBirth'
    t.string 'EmailAddress'
    t.string 'PostalAddress'
    t.string 'City'
    t.string 'State'
    t.string 'Zip'
    t.string 'PhoneNumber'
    t.integer 'LoginID'
    end
    
    create_table :tblEvent do |t|
     t.primary_key 'EventID'
     t.datetime 'EventDate'
     t.string 'EventLocationGPS'
     t.string 'EventLocationFriendly'
     t.string 'ToLocation'
     t.string 'FromLocation'
     t.integer 'QuantityCanCarry'
     t.string 'OneWayTrip'
     t.integer 'EventBufferTime'
     t.string 'EventComments'
    end
    
    create_table :tblCar do |t|
    t.primary_key 'CarID'
    t.string 'CarMake'
    t.string 'CarModel'
    t.string 'CarYear'
    t.string 'CarLicense'
    t.string 'CarLicenseState'
    t.string 'CarColor'
    t.float 'CarMPG'
    t.integer 'CarOwnerID'
    t.string 'CarComments'
    end
        
    create_table :tblWaitlist do |t|
    t.primary_key 'ID'
    t.integer 'EventID'
    t.integer 'PersonID'
    t.string 'EventPersonCode'
    end
          
    create_table :tblLogins do |t|
    t.primary_key 'LoginID'
    t.string 'LoginName'
    t.string 'LoginPassword'
    t.datetime  'JoinDate'
    t.datetime  'LastLoggedIn'
    t.string 'LoginComments'
    end
  end
end

