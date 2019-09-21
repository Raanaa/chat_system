class Addpublishedcolumn < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :published, :boolean
  end
end
