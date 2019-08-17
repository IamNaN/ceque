class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :participants, -> { distinct }, through: :messages
end
