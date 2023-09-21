class AddFollowerIdToFollower < ActiveRecord::Migration[7.0]
  def change
    add_column :followers, :follower_id, :string
  end
end
