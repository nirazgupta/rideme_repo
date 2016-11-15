class CreateCarOwners < ActiveRecord::Migration
  def change
    create_table :car_owners do |t|
      
      t.string 'CarMake'
      t.string 'CarModel'
      t.string 'CarYear'
      t.string 'CarLicense'
      t.string 'CarLicenseState'
      t.string 'CarColor'
      t.float 'CarMPG'
      t.integer 'CarOwnerID'
      t.string 'CarComments'
      t.timestamps null: false
    end
  end
end
