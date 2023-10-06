require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    
    #user = FactoryBot.create(:user)
    #tweet = FactoryBot.create(:tweet, user_id: user.id)
    #retweet = FactoryBot.create(:retweet, user_id: user.id, tweet_id: tweet.id)
    #user_params = { user_name: 'golang', full_name: 'golang', password: '123abcIoogo+-456', user_email: 'golang@golang.com' }
    let(:valid_params) { { user: { user_name: 'testuser', full_name: 'Test User', password: 'Password123+-', user_email: 'test@example.com' } } }

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

    # Define los parámetros válidos para crear un usuario
    

    it 'creates a new user' do
      # Envía una solicitud POST para crear un usuario
      post "/api/users", params: valid_params

      # Verifica que el usuario se haya creado en la base de datos
      expect(User.count).to eq(18)

      # Verifica que la respuesta tenga el código de estado correcto
      expect(response).to have_http_status(:created)

      # Verifica que el usuario se haya creado correctamente
      user = User.first
      expect(user.user_name).to eq('testuser')
      expect(user.full_name).to eq('Test User')
      expect(user.user_email).to eq('test@example.com')
      # Puedes agregar más expectativas según los atributos de tu modelo User
    end

  end
end
