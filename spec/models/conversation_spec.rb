require 'rails_helper'

describe Conversation do
  describe 'participants' do
    it 'shows only unique participants' do
      conversation = create :conversation
      create :message, conversation: conversation, participant: Participant.last
      expect(conversation.participants.count).to eq 2
      expect(conversation.messages.count).to eq 3
    end
  end
  describe 'destroy' do
    it 'deletes the messages' do
      conversation = create :conversation
      conversation.destroy
      expect(Message.count).to be_zero
    end
    it 'does not delete participants' do
      conversation = create :conversation
      conversation.destroy
      expect(Participant.count).to_not be_zero
    end
  end
end
