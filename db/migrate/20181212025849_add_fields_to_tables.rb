class AddFieldsToTables < ActiveRecord::Migration[5.1]
  def change
    add_column :lead_quals, :user_id, :integer
    add_column :lead_quals, :course_id, :integer
    add_column :unit_quals, :user_id, :integer
    add_column :unit_quals, :course_id, :integer
  end
end
