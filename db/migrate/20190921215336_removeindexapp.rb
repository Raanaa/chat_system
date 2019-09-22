class Removeindexapp < ActiveRecord::Migration[5.2]
  def change
    remove_index "applications", name: "index_applications_on_token"
  end
end
