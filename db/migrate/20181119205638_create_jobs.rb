class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :job_description
      t.string :job_origin
      t.string :job_destination
      t.integer :job_cost
      t.integer :containers_needed
      t.timestamps
    end
  end
end
