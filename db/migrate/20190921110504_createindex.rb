class Createindex < ActiveRecord::Migration[5.2]
  def change
    add_index :messages, [:id], unique: true
  end
end
