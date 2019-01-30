class AddTimesheetIdToHours < ActiveRecord::Migration[5.1]
  def change
    add_column :hours, :timesheet_id, :integer
  end
end
