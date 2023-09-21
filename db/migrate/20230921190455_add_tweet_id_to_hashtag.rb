class AddTweetIdToHashtag < ActiveRecord::Migration[7.0]
  def change
    add_reference :hashtags, :tweet, null: false, foreign_key: true
  end
end
