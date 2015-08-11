class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.integer :advertise_id
      t.integer :advertiser_id
      t.string :title
      t.text :content
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.string :location
      t.integer :max_number
      t.integer :last_number
      t.integer :total_view
      t.integer :total_check
      t.integer :total_send

      t.timestamps null: false
    end
  end
end


