class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :chats, :app_id, :application_id
  end
end
