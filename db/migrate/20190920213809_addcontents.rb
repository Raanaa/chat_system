class Addcontents < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :message_content, :text
  end
end
