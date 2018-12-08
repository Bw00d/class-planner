json.extract! delivery, :id, :course_number, :course_id, :credits, :fees, :seat_load, :start_date, :end_date, :start_time, :end_time, :location, :requestor, :poc, :notes, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)
