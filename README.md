
# Practice Lab 1 Module 2 xTwitter Ioogo
#Ruby on Rails

Practice Lab 1: Twitter Data Modeling
Rene Garcia
•

![xtwitter](https://github.com/javasquezgo/xtwitter/assets/45018994/afbd8b25-bdce-4a45-a122-d37a1e143dcb)


Based on the Twitter database model created in lecture 3.1 add support for the following features:

    Tweet Reply
    Bookmark
    Likes
    Quotes
    Retweets
    Followers

Your repository should include Active Record Models, Migrations, Associations and a markdown file explaining the reasoning behind your modeling make sure to include a visual representation of your model similar like the one shown in class.
For this Assignment submit a link to a pull request form a branch names practice-lab-1 to main in your own repository in GitHub use the attached images as guide


Users Table:

        
        Fields:
        id (Primary Key): Identifier for each user.
        user_name: User's chosen username.
        email_user: User's email address.
        first_name: User's first name.
        last_name: User's last name.

Tweets Table:


        
        Fields:
        id_tweet (Primary Key): Unique identifier for each tweet.
        body: The content of the tweet.
        retweet: Indicates if the tweet is a retweet.
        quotes: Indicates if the tweet quotes another tweet.
        id_user: References the user who created the tweet.


Bookmarks Table:

    
        Fields:
        id (Primary Key): Unique identifier for each bookmark.
        user_id: References the user who bookmarked the tweet.
        tweet_id: References the tweet that was bookmarked.


Likes Table:

    
        Fields:
        id (Primary Key): Unique identifier for each like.
        user_id: References the user who liked the tweet.
        tweet_id: References the tweet that was liked.

Followers Table:

    Purpose: Establishes follower relationships between users.

    Fields:
        id (Primary Key): Unique identifier for each follower relationship.
        follower_id: References the user who is following another user.
        following_id: References the user who is being followed.


Hashtag Table:

    Purpose: Stores information about hashtags.

    Fields:
        id_hashtag: Unique identifier for each hashtag.
        id_tweet: References the tweet associated with the hashtag.
        hashtag: The actual hashtag text.
