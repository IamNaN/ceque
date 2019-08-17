FactoryBot.define do
  factory :conversation do
    metadata { nil }
    after :create do |conversation|
      create_list(:message, 2, conversation: conversation)
    end
  end
end
