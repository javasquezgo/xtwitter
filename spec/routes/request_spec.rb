require 'rails_helper'

RSpec.describe 'Request test', type: :request do

  context 'GET /users/:id' do
    user_test = FactoryBot.create(:user)
    tweet = FactoryBot.create(:tweet, user_id: user_test.id)
    
    # # # # # # #Este si funciona
     it 'returns the correct username in the JSON response' do
         get "/users/#{user_test.id}", headers: { 'Content-Type': 'application/json' }   
         expect(response).to have_http_status(200)
         #expect(response.body).to match_response_schema('user.json')
         #expect(response).to match_json_schema('user.json')
         user_response = JSON.parse(response.body)
         expect(user_response['full_name']).to eq(user_test.full_name)
     end

=begin  it 'returns the tweets from an user' do
        get "/users/#{user_test.id}/tweets", headers: { 'Content-Type': 'application/json'}
        expect(response).to have_http_status(200)
        #expect(response.body).to match_json_schema('tweet.json') # Asumiendo que tienes un archivo tweet.json definido
        expect(response.body).to match_response_schema('tweet.json') # Asumiendo que tienes un archivo tweet.json definido
        user_response = JSON.parse(response.body)
        expect(user_response[0]['user_id']).to eq(user_test.id)
      #get "/users/#{user_test.id}/tweets" , headers: { 'Content-Type': 'application/json' }
      #get "/users/1/tweets" , headers: { 'Content-Type': 'application/json' }
      #expect(response).to have_http_status(200)
      #expect(response.body).to match_json_schema('user.json')
      #user_response = JSON.parse(response.body)
      #expect(user_response['full_name']).to eq(user_test.full_name) 
=end
    end

  context 'Methods of post and get from tweets' do
    
    let(:user) { create(:user) }
    let(:tweet) { create(:tweet)}

    # it 'returns the tweets and replies from an user' do
    #   get "/users/#{user.id}/tweets_and_replies"
    #   expect(response).to have_http_status(200)
    #   user_response = JSON.parse(response.body)
    #   expect(response.body).to match_json_schema('tweet.json')
    # end

     it 'returns a successful response when liking a tweet' do

      like = create(:like, user: user, tweet: tweet)
      like_json = like.to_json
      
      post "/tweets/#{tweet.id}/like", params: like_json, headers: { 'Content-Type': 'application/json' }
      expect(response).to have_http_status(200)
      tweet_response = JSON.parse(response.body)
      expect(response.body).to match_json_schema('like.json')
     
    end

  #   it 'returns a successful response when unliking a tweet' do
  #     delete "/tweets/#{tweet.id}/unlike"
  #     expect(response).to have_http_status(400)
  #     tweet_response = JSON.parse(response.body)
  #     expect(response.body).to match_json_schema('tweet.json')
  #     expect(tweet_response['content']).to eq(tweet.content)
  #  end

  #   it 'Making a retweet' do
  #     post "/tweets/#{tweet.id}/retweet"
  #     expect(response).to have_http_status(200)
  #     tweet_response = JSON.parse(response.body)
  #     expect(response.body).to match_json_schema('tweet.json')
  #     expect(tweet_response['content']).to eq(tweet.content)
  #   end

  #   it 'Making a quote' do
  #     post "/tweets/#{tweet.id}/quote"
  #     expect(response).to have_http_status(200)
  #     tweet_response = JSON.parse(response.body)
  #     expect(response.body).to match_json_schema('tweet.json')
  #     expect(tweet_response['content']).to eq(tweet.content)
  #   end

  #   it 'Making a reply' do
  #     post "/tweets/#{tweet.id}/reply"
  #     expect(response).to have_http_status(200)
  #     tweet_response = JSON.parse(response.body)
  #     expect(response.body).to match_json_schema('tweet.json')
  #     expect(tweet_response['content']).to eq(tweet.content)
  #   end

  #   it 'Making a bookmark' do
  #     post "/tweets/#{tweet.id}/bookmark"
  #     expect(response).to have_http_status(200)
  #     tweet_response = JSON.parse(response.body)
  #     expect(response.body).to match_json_schema('tweet.json')
  #     expect(tweet_response['content']).to eq(tweet.content)
  #   end
   end

  end