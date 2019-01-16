class CreateHours < ActiveRecord::Migration[5.1]
  def change
    create_table :hours do |t|
      t.datetime :start
      t.datetime :end
      t.decimal :break, precision: 3, scale: 2, default: 0.0
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
