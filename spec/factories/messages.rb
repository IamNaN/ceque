require 'faker'
FactoryBot.define do
  factory :message do
    participant
    conversation
    content       { Faker::Lorem.sentence }
  end
end
