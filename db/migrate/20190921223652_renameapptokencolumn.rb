class Renameapptokencolumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :chats, :application_id, :application_token
  end
end
