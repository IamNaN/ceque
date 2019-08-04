module Supportq
  class Message < ApplicationRecord
    belongs_to :participant, optional: true
    belongs_to :conversation
  end
end
