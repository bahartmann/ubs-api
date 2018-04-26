FactoryBot.define do
  factory :ubs do
    name { Faker::Lorem.word }
    address { Faker::Address.street_name }
    city { Faker::Address.city }
    phone { Faker::PhoneNumber.phone_number }
    geocode_lat { Faker::Address.latitude }
    geocode_long { Faker::Address.longitude }
    size { Faker::Score.score }
    adaptation_for_seniors { Faker::Score.score }
    medical_equipment { Faker::Score.score }
  end
end
