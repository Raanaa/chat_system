class Removeindexchattable < ActiveRecord::Migration[5.2]
  def change
    remove_index :chats, :application_id
  end
end
