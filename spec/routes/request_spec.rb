require 'rails_helper'

RSpec.describe 'Request test', type: :request do
#These are the test for the requests

  context 'GET /users/:id' do
    
    let(:user) do
      User.create(
        id: 1,
        user_name: 'john_doe',
        full_name: 'John',
        user_email: 'john@example.com',
        password: 'password123',
        created_at: Time.now,
        updated_at: Time.now
      )
    end

    let(:tweet) do
      Tweet.create(
        content: 'Tweet de prueba',
        created_at: Time.now,
        updated_at: Time.now,
        user_id: 1
      )
    end

    it 'returns the correct user name in the JSON response' do
        get "/users/#{user.id}"
        expect(response).to have_http_status(200)
        user_response = JSON.parse(response.body)
        expect(user_response['full_name']).to eq(user.full_name)
    end

    it 'returns the tweets from an user' do
      get "/users/#{user.id}/tweets"
      expect(response).to have_http_status(200)
      user_response = JSON.parse(response.body)
      expect(user_response['full_name']).to eq(user.full_name)
    end

    it 'returns the tweets and replies from an user' do
      get "/users/#{user.id}/tweets_and_replies"
      expect(response).to have_http_status(200)
      user_response = JSON.parse(response.body)
      expect(user_response['full_name']).to eq(user.full_name)
    end

     it 'returns a successful response when liking a tweet' do
       post "/tweet/#{tweet.id}/like"
       expect(response).to have_http_status(400)
       tweet_response = JSON.parse(response.body)
       expect(tweet_response['content']).to eq(tweet.content)
    end

    it 'returns a successful response when unliking a tweet' do
      delete "/tweet/#{tweet.id}/unlike"
      expect(response).to have_http_status(400)
      tweet_response = JSON.parse(response.body)
      expect(tweet_response['content']).to eq(tweet.content)
   end

   it 'Making a retweet' do
    post "/tweet/#{tweet.id}/retweet"
    expect(response).to have_http_status(200)
    tweet_response = JSON.parse(response.body)
    expect(tweet_response['content']).to eq(tweet.content)
   end

   it 'Making a quote' do
    post "/tweet/#{tweet.id}/quote"
    expect(response).to have_http_status(200)
    tweet_response = JSON.parse(response.body)
    expect(tweet_response['content']).to eq(tweet.content)
   end

   it 'Making a reply' do
    post "/tweet/#{tweet.id}/reply"
    expect(response).to have_http_status(200)
    tweet_response = JSON.parse(response.body)
    expect(tweet_response['content']).to eq(tweet.content)
   end

   it 'Making a bookmark' do
    post "/tweet/#{tweet.id}/bookmark"
    expect(response).to have_http_status(200)
    tweet_response = JSON.parse(response.body)
    expect(tweet_response['content']).to eq(tweet.content)
   end

  end


end

=begin context 'Check the tweet validations' do
    tweet_params = {content: 'Tweet test', user_id: 2}
    
    it 'should return 200 status response for Patch /tweets/:id' do
      patch'/tweets/1', :params => tweet_params
      expect(response.status).to have_http_status(200)
    end
  end
=end





















































=begin
    
RSpec.describe "Tweets", type: :request do
  describe "POST /tweets" do
    context "with valid parameters" do
      let(:valid_params) { { content: "This is a test tweet" } }

      it "creates a new tweet" do
        expect {
          post tweets_path, params: { tweet: valid_params }
        }.to change(Tweet, :count).by(1)

        expect(response).to have_http_status(201) # 201 Created
      end
    end

    context "with invalid parameters" do
      let(:invalid_params) { { content: "" } }

      it "does not create a new tweet" do
        expect {
          post tweets_path, params: { tweet: invalid_params }
        }.not_to change(Tweet, :count)

        expect(response).to have_http_status(422) # 422 Unprocessable Entity (due to validation error)
      end
    end
  end
end
    
=end
=begin 
context "with valid parameters" do
  let(:valid_params) { { content: "This is a test tweet" } }

  it "creates a new tweet" do
    expect {
      post tweets_path, params: { tweet: valid_params }
    }.to change(Tweet, :count).by(1)

    expect(response).to have_http_status(201) # 201 Created
  end
end
=end