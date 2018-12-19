class AddFlyerMadeToDeliveries < ActiveRecord::Migration[5.1]
  def change
    add_column :deliveries, :flyer_made, :boolean
  end
end
