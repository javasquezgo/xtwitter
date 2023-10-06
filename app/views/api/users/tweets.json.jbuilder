json.array! @users do |user|
    json.user_name user.user_name
    json.id user.id
    json.content user.content
 end 