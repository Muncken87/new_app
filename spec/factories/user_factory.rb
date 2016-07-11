FactoryGirl.define do
  factory :user do
    email "Faker::Internet.email"
    password "1234567890"
    first_name "Faker::Name.name"
    last_name "Faker::Name.last_name"
    admin false
  end
end
