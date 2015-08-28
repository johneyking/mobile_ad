class CreateAdvocates < ActiveRecord::Migration
  def change
    create_table :advocates do |t|
    	    t.integer :advocate_id
      t.string :account
      t.string :password
      t.string :email
       t.string :phone
       t.string :ibeacon_id
        t.string :name
        
      t.timestamps null: false
    end
  end
end
