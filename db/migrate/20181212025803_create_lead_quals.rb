class CreateLeadQuals < ActiveRecord::Migration[5.1]
  def change
    create_table :lead_quals do |t|
      
      t.timestamps
    end
  end
end
