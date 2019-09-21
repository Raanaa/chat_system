class Addpublished < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :boolean, :boolean
  end
end
