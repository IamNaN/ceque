require 'rails_helper'
include Shared::Steps

feature 'participants', js: true do
  scenario 'starting a conversation' do
    Given I am a_participant
    When I visit the support_path
    And I enter_a_message
    op
    And I click_on 'Send'
    Then I a_conversation_is_started
    And my_message_is_displayed
  end

  def a_participant
    @participant = create :participant
  end

  def enter_a_message
    fill_in :message_content, with: 'a message'
  end

  def a_conversation_is_started
    expect(Conversation.count).to eq 1
  end

  def my_message_is_displayed
    expect(page).to have_content 'a message'
  end
end
