class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :body
      t.boolean :retweet
      t.boolean :quotes
      t.string :id_user

      t.timestamps
    end
  end
end
