class Hour < ApplicationRecord

  belongs_to :user

  def total
    (self.start.to_time - self.end.to_time) / 60.minutes - self.break
  end
end
