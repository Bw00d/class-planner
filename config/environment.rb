# Load the Rails application.
require_relative 'application'


ActionMailer::Base.smtp_settings = {
  :user_name => <%= ENV["SENDGRID_username"] %>,
  :password => <%= ENV["SENDGRID_PASSWORD"] %>,
  :domain => 'ccc-planner.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
# Initialize the Rails application.
Rails.application.initialize!
