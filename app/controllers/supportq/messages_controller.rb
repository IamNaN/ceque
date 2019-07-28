module Supportq
  class MessagesController < ApplicationController
    def index
      @message = conversation.messages.build
      @messages = conversation.messages
    end
    
    def create
      @message = conversation.messages.build
      @messages = conversation.messages
      conversation.messages.create(message_params)
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