class Removeuniqchatid < ActiveRecord::Migration[5.2]
  def change
    remove_index :messages, :chat_id
  end
end
