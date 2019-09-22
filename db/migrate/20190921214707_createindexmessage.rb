class Createindexmessage < ActiveRecord::Migration[5.2]
  def change
    add_index :messages, [:chat_id], unique: true
  end
end
