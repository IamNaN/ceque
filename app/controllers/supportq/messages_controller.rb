module Supportq
  class MessagesController < ApplicationController
    layout 'supportq'
    def index
      @messages = conversation.messages
    end
    
    def create
      conversation.messages.create(message_params)
      @messages = conversation.messages
      render 'index'
    end

    private

    def message_params
      params.require(:message).permit(:content, :participant)
    end

    def conversation
      @conversation ||= params[:conversation_id].present? ? Conversation.find(params[:conversation_id]) : Conversation.create
    end
  end
end