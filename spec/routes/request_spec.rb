require 'rails_helper'

RSpec.describe 'Request test', type: :request do

  user = FactoryBot.create(:user)
  tweet = FactoryBot.create(:tweet)

  context 'GET /users/:id' do
    it 'returns the correct user name in the JSON response' do
        get "/users/#{user.id}"
        expect(response).to have_http_status(200)
        expect(response.body).to match_json_schema('user.json')
        user_response = JSON.parse(response.body)
        expect(user_response['full_name']).to eq(user.full_name)
    end

    it 'returns the tweets from an user' do
      get "/users/#{user.id}/tweets"
      expect(response).to have_http_status(200)
      expect(response.body).to match_json_schema('user.json')
      user_response = JSON.parse(response.body)
      expect(user_response['full_name']).to eq(user.full_name)
    end
  end

  context 'Methods of post and get from tweets' do
    
    it 'returns the tweets and replies from an user' do
      get "/users/#{user.id}/tweets_and_replies"
      expect(response).to have_http_status(200)
      user_response = JSON.parse(response.body)
      expect(response.body).to match_json_schema('tweet.json')
      expect(user_response['full_name']).to eq(user.full_name)
    end

    it 'returns a successful response when liking a tweet' do
       post "/tweets/#{tweet.id}/like"
       expect(response).to have_http_status(200)
       tweet_response = JSON.parse(response.body)
       expect(response.body).to match_json_schema('tweet.json')
       expect(tweet_response['content']).to eq(tweet.content)
    end

    it 'returns a successful response when unliking a tweet' do
      delete "/tweets/#{tweet.id}/unlike"
      expect(response).to have_http_status(400)
      tweet_response = JSON.parse(response.body)
      expect(response.body).to match_json_schema('tweet.json')
      expect(tweet_response['content']).to eq(tweet.content)
   end

    it 'Making a retweet' do
      post "/tweets/#{tweet.id}/retweet"
      expect(response).to have_http_status(200)
      tweet_response = JSON.parse(response.body)
      expect(response.body).to match_json_schema('tweet.json')
      expect(tweet_response['content']).to eq(tweet.content)
    end

    it 'Making a quote' do
      post "/tweets/#{tweet.id}/quote"
      expect(response).to have_http_status(200)
      tweet_response = JSON.parse(response.body)
      expect(response.body).to match_json_schema('tweet.json')
      expect(tweet_response['content']).to eq(tweet.content)
    end

    it 'Making a reply' do
      post "/tweets/#{tweet.id}/reply"
      expect(response).to have_http_status(200)
      tweet_response = JSON.parse(response.body)
      expect(response.body).to match_json_schema('tweet.json')
      expect(tweet_response['content']).to eq(tweet.content)
    end

    it 'Making a bookmark' do
      post "/tweets/#{tweet.id}/bookmark"
      expect(response).to have_http_status(200)
      tweet_response = JSON.parse(response.body)
      expect(response.body).to match_json_schema('tweet.json')
      expect(tweet_response['content']).to eq(tweet.content)
    end
  end

end
