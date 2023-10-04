json.array! @users do |user|
    json.user_name user.user_name
    json.content user.content
    json.reply_text user.reply_text
 end 