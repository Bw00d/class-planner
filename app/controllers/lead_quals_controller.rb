class LeadQualsController < ApplicationController

  def create
    @lead_qual = LeadQual.new(lead_qual_params)
  end
  private
  def lead_qual_params
    params.require(:lead_qual).permit(:user_id, :course_id)
  end

  def find_course
    course = Course.find(self.course_id)
  end
end