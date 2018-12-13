class CreateUnitQuals < ActiveRecord::Migration[5.1]
  def change
    create_table :unit_quals do |t|
      
      t.timestamps
    end
  end
end
