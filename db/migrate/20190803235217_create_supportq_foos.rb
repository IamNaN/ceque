class CreateSupportqFoos < ActiveRecord::Migration[5.2]
  def change
    create_table :supportq_foos do |t|
      t.string :name

      t.timestamps
    end
  end
end
