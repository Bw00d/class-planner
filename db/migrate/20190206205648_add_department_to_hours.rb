class AddDepartmentToHours < ActiveRecord::Migration[5.1]
  def change
    add_column :hours, :department, :string
    add_column :users, :ccc_id, :string
  end
end
