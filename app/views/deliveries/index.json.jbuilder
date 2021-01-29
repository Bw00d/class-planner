# json.array! @deliveries, partial: 'deliveries/delivery', as: :delivery

json.array!(@deliveries) do |delivery|
json.extract! delivery, :id, :city, :state, :start_date, :end_date, :requestor
json.title delivery.course.course_number + ' - ' + delivery.title 
json.number delivery.course.course_number
json.start delivery.start_date
json.end delivery.end_date
json.url delivery_url(delivery, format: :html)
end
