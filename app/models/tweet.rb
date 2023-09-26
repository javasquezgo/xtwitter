class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :retweets
    has_many :bookmarks
    has_many :tags
    has_and_belongs_to_many :hashtags
    has_many :quotes

    validates :content, length: {minimum:1, maximum:255}
    validates :user_id, presence: true

    scope :retweets_from_user, ->(user_id) {
        select('users.user_name, tweets.content, retweets.reply_text')
          .joins('JOIN retweets ON users.id = retweets.user_id')
          .joins('LEFT JOIN tweets ON tweets.id = retweets.tweet_id')
          .where('users.id = ?', user_id)
      }

    scope :with_username_and_content_for_user, ->(user_id) {
        joins(:user).where(users: { id: user_id }).select('users.user_name, tweets.content')
      }
end
