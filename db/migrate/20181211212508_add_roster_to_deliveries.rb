class AddRosterToDeliveries < ActiveRecord::Migration[5.1]
  def change
    add_column :deliveries, :term_master, :boolean, default: false
    add_column :deliveries, :reg_form, :boolean, default: false
    add_column :deliveries, :roster, :boolean, default: false
    add_column :deliveries, :welcome_letter, :boolean, default: false
    add_column :deliveries, :agenda, :boolean, default: false
    add_column :deliveries, :materials, :boolean, default: false
    add_column :deliveries, :ta, :boolean, default: false
    add_column :deliveries, :invoiced, :boolean, default: false
    add_column :deliveries, :certificates, :boolean, default: false
    add_column :deliveries, :fac, :boolean, default: false
  end
end