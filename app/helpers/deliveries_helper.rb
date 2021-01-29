module DeliveriesHelper
  def delivery_dates(deliveries)
    dates = deliveries.pluck(:start_date)
  end
end
