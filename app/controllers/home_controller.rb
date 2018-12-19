# :nodoc:
class HomeController < ApplicationController
  include SkipAuthorization

  def index; 
    @deliveries = current_user.deliveries.order(start_date: :asc)
  end
end
