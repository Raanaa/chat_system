class Createindexforchat < ActiveRecord::Migration[5.2]
  def change
    add_index :chats, [:application_id], unique: true
  end
end
