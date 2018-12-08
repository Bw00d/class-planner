class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.string  :course_number
      t.integer :course_id
      t.integer :credits
      t.integer :fees
      t.integer :seat_load
      t.date    :start_date
      t.date    :end_date
      t.time    :start_time
      t.time    :end_time
      t.text    :location
      t.string  :requestor
      t.string  :poc
      t.text    :notes

      t.timestamps
    end
  end
end
