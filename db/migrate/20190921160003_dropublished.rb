class Dropublished < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :boolean
  end
end
