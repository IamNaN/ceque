module CeQue
  class CeQueController < ApplicationController
    layout 'ceque'

    def current_participant
      @current_participant ||= Participant.find(session[:participant_id]) if session[:participant_id]
    end
    helper_method :current_user
    
    def authorize
      redirect_to support_url, alert: "Not authorized" if current_participant.nil?
    end
    private
    
  end
end