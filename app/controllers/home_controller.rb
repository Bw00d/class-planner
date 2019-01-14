# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index; 
    @deliveries = current_user.deliveries.order(start_date: :asc)
    # @leads = current_user.deliveries.order(start_date: :asc)
    # @units = current_user.units
    # @deliveries = @leads + @units.sort_by(&:start_date)
  end

end
