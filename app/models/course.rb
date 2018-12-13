class Course < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :course_number, presence: true
  has_many :lead_quals
  has_many :unit_quals

end