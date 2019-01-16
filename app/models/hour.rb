class Hour < ApplicationRecord

  belongs_to :user

  def total
    (self.end.to_time - self.start.to_time ) / 60.minutes - self.break
  end
end
