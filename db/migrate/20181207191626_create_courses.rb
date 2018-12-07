class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :course_number
      t.string :hours

      t.timestamps null: false
    end
  end
end
