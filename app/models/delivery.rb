class Delivery < ApplicationRecord

  acts_as_commontable dependent: :destroy

  def course
    Course.find(self.course_id)
  end

end

