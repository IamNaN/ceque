class CreateSupportqConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :supportq_conversations do |t|
      t.jsonb :metadata

      t.timestamps
    end
  end
end
