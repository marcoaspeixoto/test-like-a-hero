FactoryBot.define do
  factory :weapon do
    name { FFaker::Name.name }
    description { FFaker::Lorem.phrase }
  end
end
