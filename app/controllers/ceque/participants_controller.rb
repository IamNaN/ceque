module CeQue
  class ParticipantsController < ApplicationController
    def create
      redirect_to [:ceque, conversation]
    end

    private

    def participant_params
      params.require(:participant).permit(:name)
    end

    def participant
      @participant ||= Participant.find_or_create_by(name: participant_params[:name])
    end

    def conversation
      @conversation ||= Conversation.find_or_create_by(created_by: participant)
    end
    
  end
end