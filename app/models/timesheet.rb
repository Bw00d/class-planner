class Timesheet < ApplicationRecord
  has_many :hours
  belongs_to :user
end
