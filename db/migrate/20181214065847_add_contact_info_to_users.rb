class AddContactInfoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :instructor, :boolean
    add_column :users, :cell_phone, :string
    add_column :users, :work_phone, :string
  end
end
