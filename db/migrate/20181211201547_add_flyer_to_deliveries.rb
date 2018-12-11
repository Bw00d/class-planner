class AddFlyerToDeliveries < ActiveRecord::Migration[5.1]
  def change
    add_column :deliveries, :flyer_sent, :boolean, default: false
    add_column :deliveries, :audio_visual, :boolean, default: false
    change_column :deliveries, :fees, :string
  end
end
