class CreateUnitInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :unit_instructors do |t|
      t.integer :delivery_id
      t.integer :user_id

      t.timestamps
    end
  end
end
