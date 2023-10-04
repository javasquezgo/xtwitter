require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    
    #user = FactoryBot.create(:user)
    #tweet = FactoryBot.create(:tweet, user_id: user.id)
    #retweet = FactoryBot.create(:retweet, user_id: user.id, tweet_id: tweet.id)

    it 'Check index' do
      user = FactoryBot.create(:user)
      get "/api/users/#{user.id}", params: { id: user.id }, headers: { 'Content-Type': 'application/json' }
      expect(response).to have_http_status(200)
      expect(response.content_type).to eq('application/json; charset=utf-8')
      user_response = JSON.parse(response.body)
      expect(user_response['full_name']).to eq(user.full_name) 
    end
  
    it 'Check tweets from an user' do
      user = FactoryBot.create(:user)
      tweet = FactoryBot.create(:tweet, user_id: user.id)
      get "/api/users/#{user.id}/tweets", params: { id: user.id }, headers: { 'Content-Type': 'application/json' }

      expect(response).to have_http_status(200)
      expect(response.content_type).to eq('application/json; charset=utf-8')
      user_response = JSON.parse(response.body)
      puts user_response[0]
      #expect(user_response['content']).to eq(tweet.content) 
    end

    it 'Check tweets and retweets from an user' do
      user = FactoryBot.create(:user)
      tweet = FactoryBot.create(:tweet, user_id: user.id)
      retweet = FactoryBot.create(:retweet, user_id: user.id, tweet_id: tweet.id)
      get "/api/users/#{user.id}/tweets_and_replies", params: { id: user.id }, headers: { 'Content-Type': 'application/json' }

      expect(response).to have_http_status(200)
      expect(response.content_type).to eq('application/json; charset=utf-8')
      user_response = JSON.parse(response.body)
      puts user_response[0]
      #expect(user_response['content']).to eq(tweet.content) 
    end

    it 'Post User' do
      user_params = { user: { user_name: 'java', full_name: 'java', password: '123abcIoogo+-456', user_email: 'java@java.com' } }
  
      post "/api/users", params: user_params.to_json, headers: { 'Content-Type': 'application/json' }

      expect(response).to have_http_status(:created)

      user = User.last
      expect(user.user_name).to eq('java')
      expect(user.user_email).to eq('java@java.com')
    end

  end
end
