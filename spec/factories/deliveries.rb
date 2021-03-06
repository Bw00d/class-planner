FactoryBot.define do
  factory :delivery do
    course_number { "S-000" }
    course_id { "1" }
    credits { "" }
    fees { 1 }
    seat_load { 1 }
    start_date { "2018-12-07" }
    end_date { "2018-12-07" }
    times { "8am - 5pm" }
    address { "MyText" }
    requestor { "MyString" }
    poc { "MyString" }
    notes { "MyText" }
    booked { false }
    flyer_made { false }
    flyer_sent { false }
  end
end
