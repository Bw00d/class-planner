class Hour < ApplicationRecord

  belongs_to :user
  belongs_to :timesheet

  def total
    total = (self.end.to_time - self.start.to_time ) / 60.minutes
    if self.break 
      total = total - self.break
    end
    total
  end
end
