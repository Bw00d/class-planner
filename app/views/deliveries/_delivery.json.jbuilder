# json.extract! delivery, :id, :start_date, :end_date,
# json.url delivery_url(delivery, format: :json)


json.array!(@deliveries) do |delivery|
json.start delivery.start_date
json.end delivery.end_date
json.url delivery_url(delivery, format: :json)
end


