class AddInstructorsToDelivery < ActiveRecord::Migration[5.1]
  def change
    add_column :deliveries, :lead_instructor, :integer
  end
end
