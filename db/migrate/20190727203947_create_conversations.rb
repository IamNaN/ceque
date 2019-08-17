class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.jsonb :metadata

      t.timestamps
    end
  end
end
