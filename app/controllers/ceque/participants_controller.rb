module CeQue
  class ParticipantsController < CeQue::CeQueController
    def create
      session[:participant_id] = participant.id
      redirect_to [:ceque, conversation]
    end

    def destroy
      session[:participant_id] = nil
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