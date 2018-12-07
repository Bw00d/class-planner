class Course < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :course_number, presence: true
end