class AddTweetIdToLike < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :tweet, null: false, foreign_key: true
  end
end
