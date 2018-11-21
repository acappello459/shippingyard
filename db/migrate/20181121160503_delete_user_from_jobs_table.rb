class DeleteUserFromJobsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :user_id
  end
end
