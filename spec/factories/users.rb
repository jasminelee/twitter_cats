FactoryGirl.define do
  factory :user do
    id { rand(100) }
    username { FFaker::Internet.user_name }
    email { FFaker::Internet.email }
    end
end
