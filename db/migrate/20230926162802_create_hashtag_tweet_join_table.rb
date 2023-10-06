class CreateHashtagTweetJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :tweets, :hashtags
  end
end
