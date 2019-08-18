class Conversation < ApplicationRecord
  belongs_to :created_by, class_name: "Participant", foreign_key: "created_by_id"
  has_many :messages, dependent: :destroy
  has_many :participants, -> { distinct }, through: :messages
end
