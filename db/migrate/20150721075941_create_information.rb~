class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.integer :information_id
      t.integer :advertise_id
      t.integer :event
      t.date :event_date
      t.time :event_time
      t.integer :sequence
      t.string :mac_address
      t.timestamps null: false
    end
  end
end
