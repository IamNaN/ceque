module Supportq
  class ConversationsController < ApplicationController
    layout 'supportq'
    def index
      conversations
    end

    def show
      conversations
      @messages = conversation.messages
    end

    def new
      @conversation = Conversation.create
      redirect_to [:supportq, @conversation]
    end

    private

    def message_params
      params.require(:message).permit(:content, :participant)
    end

    def conversation
      @conversation ||= params[:id].present? ? Conversation.find(params[:id]) : Conversation.create
    end

    def conversations
      @conversations ||= Conversation.all.order(updated_at: :desc).limit(10)
    end
    
  end
end