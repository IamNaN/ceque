class CreateSupportqMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :supportq_messages do |t|
      t.references :supportq_participant, foreign_key: true
      t.references :supportq_conversation, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
