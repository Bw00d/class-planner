class Delivery < ApplicationRecord

  def course
    Course.find(self.course_id)
  end

end

