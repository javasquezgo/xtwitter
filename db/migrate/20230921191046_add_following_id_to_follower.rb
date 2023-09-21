class AddFollowingIdToFollower < ActiveRecord::Migration[7.0]
  def change
    add_column :followers, :following_id, :string
  end
end
