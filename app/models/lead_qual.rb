class LeadQual < ApplicationRecord
  belongs_to :user
  belongs_to :course

  def find_course

    Course.find(self.course_id) if self.course_id
  end
end
