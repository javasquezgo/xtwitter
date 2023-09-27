User tweets Scope: Create a new scope that retrieves the tweets of a user
Tweet.select(:content).joins(:user).where('user_id = ?', 1)

Tweets and Replies: Create a new scope that retrieves the tweets and replies of that same user
Tweet.select(:content)
.joins(:user, :retweets)
.where('users.id = ? AND retweets.user_id = ?', 1, 1)

Followers Count: Create a new scope that retrieves the number of followers a user has
User.joins(:followers).where('followers.user_id = ?', 4).count

Following Count: Create a new scope that retrieves the number of users a user follows
User.select(:following).joins(:followers).where('followers.user_id = ?', 4).count

Retweets counts: Create a new scope that retrieves the number of retweets
Retweet.count

Quotes count: Create a new scope that retrieves the number of quotes
Retweet.where('user_id = ?', 1).count

Bookmarked tweets: Creates a new scope that retrieves the bookmarked tweets by a user
Bookmark.where('user_id = ?', 1).count

Retweet method: Create a method that encapsulates the retweet logic accepting a user a parameter
def self.retweet(user, tweet) # Verificamos si el usuario ya retuiteó este tweet
if Retweet.exists?(user_id: user.id, tweet_id: tweet.id)
return false # El usuario ya retuiteó este tweet
else # Crear un nuevo retweet
Retweet.create(user_id: user.id, tweet_id: tweet.id)
return true # Retweet exitoso
end
end

QuoteTweet: Create a method that encapsulates the retweet logic accepting a user an a text body as parameter

Like a tweet: Create a method that encapsulates the like logic accepting a user

Hashtag creation Method: Create a method that encapsulates the logic to scan a tweet body text and creates a new hashtag if it doesn’t exists and creates the new association between tweet and hashtag
