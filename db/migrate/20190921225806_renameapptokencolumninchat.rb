class Renameapptokencolumninchat < ActiveRecord::Migration[5.2]
  def change
    rename_column :chats, :application_token, :application_id
  end
end
