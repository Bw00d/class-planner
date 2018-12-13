class LeadQualsController < ApplicationController

  def create
    @lead_qual = LeadQual.new(leaad_qual_params)
  end
  private
  def leaad_qual_params
    params.require(:lead_qual).permit(:user_id, :course_id)
  end
end