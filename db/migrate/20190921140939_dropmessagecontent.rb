class Dropmessagecontent < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :message_content
  end
end
