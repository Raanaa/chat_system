class Addindexchattable < ActiveRecord::Migration[5.2]
  def change
    add_index :chats, [:application_id]
  end
end
