FactoryBot.define do
  factory :conversation do
    created_by  { create :participant }
    metadata    { nil }
    after :create do |conversation|
      create_list(:message, 2, conversation: conversation)
    end
  end
end
