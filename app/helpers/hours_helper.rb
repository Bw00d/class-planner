module HoursHelper
  def total_hours(hours)
    tally = 0
    hours.each { |h| tally += h.total }
    tally
  end
  def total
    total = (self.end.to_time - self.start.to_time ) / 60.minutes
    if self.break
      total = total - self.break
    end
    total
  end

  def instruction(hours)
    hours = hours.where(work_type: "Instruction")
    total_hours(hours)
  end

  def non_instruction(hours)
    hours = hours.where(work_type: "Non-Instr.")
    total_hours(hours)
  end
end
