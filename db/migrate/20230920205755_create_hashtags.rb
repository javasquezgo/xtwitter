class CreateHashtags < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtags do |t|
      t.string :id_hashtag
      t.string :id_tweet
      t.string :hashtag

      t.timestamps
    end
  end
end
