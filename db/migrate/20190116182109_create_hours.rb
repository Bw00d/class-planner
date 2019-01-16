class CreateHours < ActiveRecord::Migration[5.1]
  def change
    create_table :hours do |t|
      t.datetime :start
      t.datetime :end
      t.integer :break, default: 0
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
