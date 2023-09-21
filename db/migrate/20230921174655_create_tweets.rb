class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :id_tweet
      t.string :content
      t.boolean :retweet
      t.boolean :quote
      t.boolean :reply

      t.timestamps
    end
  end
end
