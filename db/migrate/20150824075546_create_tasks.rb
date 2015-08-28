class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.integer :task_id
      t.integer :advocate_id
      t.integer :advertise_id
      t.integer :send_number
      t.integer :status
      t.timestamps null: false
    end
  end
end
