FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    name { FAker::Name.name }
    auth_token { "xxxxxxxxx" }
  end
end
