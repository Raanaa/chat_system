class Removeindex < ActiveRecord::Migration[5.2]
  def change
    remove_index "messages", name: "index_messages_on_id"
  end
end
