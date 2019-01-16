class AddInstructorsToDelivery < ActiveRecord::Migration[5.1]
  def change
    add_column :deliveries, :lead_instructor, :integer

    create_table :unit_instructors do |t|
      t.integer :user_id
      t.integer :delivery_id
    end
  end
end
