class AddWorkTypeToHours < ActiveRecord::Migration[5.1]
  def change
    add_column :hours, :work_type, :string
  end
end
