FactoryBot.define do
    sequence :username do |n|
      "username"
    end
  
    factory :user do
      email
      password { "password123" }
    end
  end