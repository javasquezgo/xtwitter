json.id @bookmark.id
json.tweet_id @bookmark.tweet_id
json.user_id @bookmark.user_id
json.created_at @bookmark.created_at.strftime("%Y-%m-%dT%H:%M:%SZ")
json.updated_at @bookmark.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ")