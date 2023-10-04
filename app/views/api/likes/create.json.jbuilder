json.id @like.id
json.tweet_id @like.tweet_id
json.user_id @like.user_id
json.created_at @like.created_at.strftime("%Y-%m-%dT%H:%M:%SZ")
json.updated_at @like.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ")