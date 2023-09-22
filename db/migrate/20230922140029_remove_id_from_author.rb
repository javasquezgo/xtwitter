class RemoveIdFromAuthor < ActiveRecord::Migration[7.0]
  def change
    remove_column :authors, :id, :integer
  end
end
