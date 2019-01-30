class CreateTimesheets < ActiveRecord::Migration[5.1]
  def change
    create_table :timesheets do |t|
      t.integer   :user_id
      t.boolean   :submitted, default: false
      t.timestamps
    end
  end
end
