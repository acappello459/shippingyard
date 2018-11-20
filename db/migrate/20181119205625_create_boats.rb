class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
        t.string :boat_name
        t.integer :container_capacity
        t.string :port_of_origin
        t.integer :user_id
      t.timestamps
    end
  end
end
