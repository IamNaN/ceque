module CeQue
  class ConversationsController < CeQue::CeQueController
    layout 'ceque'
    def index
      conversations
    end

    def show
      conversations
      @messages = conversation.messages
    end

    def new
      render layout: 'ceque_clean'
    end

    def create
      @conversation = Conversation.create(created_by: current_participant)
      @messages = []
      render 'show'
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