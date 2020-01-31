# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index;
    @leads = current_user.deliveries.where('extract(year  from start_date) = ?', 2020).order(start_date: :asc)
    @expired_leads = current_user.deliveries.where('extract(year  from start_date) = ?', 2019).order(start_date: :asc)
    @units = current_user.units
    @deliveries = @leads + @units
  end

end
