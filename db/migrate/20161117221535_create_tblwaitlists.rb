class CreateTblwaitlists < ActiveRecord::Migration
  def change
    create_table :tblwaitlists do |t|
                
    
      #t.primary_key 'ID'
      t.integer 'EventID'
      t.integer 'PersonID'
      t.string 'EventPersonCode'
 

      t.timestamps null: false
    end
  end
end
