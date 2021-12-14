# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index;
    @username = "SENDGRID_USERNAME: #{ENV['SENDGRID_USERNAME']}"
    @password =  "SENDGRID_PASSWORD: #{ENV['SENDGRID_PASSWORD']}"
    @leads = current_user.deliveries.where('extract(year  from start_date) = ?', 2022).order(start_date: :asc)
    @expired_leads = current_user.deliveries.where('extract(year  from start_date) = ?', 2021).order(start_date: :asc)
    @units = current_user.units
    @deliveries = @leads + @units
  end

end
