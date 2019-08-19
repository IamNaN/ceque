module CeQue
  class MessagesController < ApplicationController
    layout 'ceque'
    
    def create
      conversation.messages.create(message_params)
      @messages = conversation.messages
      redirect_to [:ceque, @conversation]
    end

    private

    def message_params
      params.require(:message).permit(:content, :participant)
    end

    def conversation
      @conversation ||= params[:conversation_id].present? ? Conversation.find(params[:conversation_id]) : Conversation.create
    end

    def conversations
      @conversations ||= Conversation.all.order(updated_at: :desc).limit(10)
    end
    
  end
end