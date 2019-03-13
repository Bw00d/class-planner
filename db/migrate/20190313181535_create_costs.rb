class CreateCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :costs do |t|
      t.decimal :price, :decimal, :precision => 8, :scale => 2
      t.integer :delivery_id
      t.integer :user_id
      t.text :comment
      t.date :date

      t.timestamps
    end
  end
end
