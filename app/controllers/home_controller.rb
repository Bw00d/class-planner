# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index; 
    @leads = current_user.deliveries.order(start_date: :asc)
    @units = current_user.units
    @deliveries = @leads + @units
  end

end
