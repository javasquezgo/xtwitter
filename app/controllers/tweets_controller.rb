class TweetsController < ApplicationController

    def like
     # Obtenemos los parámetros de la solicitud
     like_params = JSON.parse(request.body.read)

     user_id = like_params['user_id']
     tweet_id = like_params['tweet_id']
 
     puts "Parámetros recibidos - user_id: #{user_id}, tweet_id: #{tweet_id}"
 
     like = Like.build(user_id: user_id, tweet_id: tweet_id)
 
     if like.exist?(user: user_id, tweet: tweet_id  )
       render json: like, status: :created
       render json: { errors: like.errors.full_messages }, status: :unprocessable_entity
     else
        Like.create(user_id: user_id, tweet_id: tweet_id)
     end
    end

end
