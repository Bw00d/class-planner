# json.array! @deliveries, partial: 'deliveries/delivery', as: :delivery

json.array!(@deliveries) do |delivery|
json.extract! delivery, :id, :city, :state, :start_date, :end_date, :requestor
json.title delivery.course.title + " - " + delivery.requestor + " - " + delivery.city
json.start delivery.start_date
json.end delivery.end_date
json.url delivery_url(delivery, format: :html)
end
