class CreateSupportqParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :supportq_participants do |t|
      t.string :name
      t.references :supportq_conversation, foreign_key: true

      t.timestamps
    end
  end
end
