class AddTimesheetIdToHours < ActiveRecord::Migration[5.1]
  def change
    add_column :hours, :timesheet_id, :integer
    add_column :hours, :submitted, :boolean, default: false
  end
end
