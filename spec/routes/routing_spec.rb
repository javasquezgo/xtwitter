require 'rails_helper'

RSpec.describe 'Tweets routing', type: :routing do
    
    user_test = FactoryBot.create(:user)
    tweet = FactoryBot.create(:tweet)

    context 'Routing test of Users' do
        it 'Check if it is given an user' do
            expect(get("/users")).to route_to("users#index")  
        end

        it 'Check if the route gives the tweets from an user' do
            expect(get("/users/#{user_test.id}/tweets")).to route_to(
                controller: "users",
                action: "tweets",
                user_id: "#{user_test.id.to_i}"
            )
        end

        it 'Check if the route gives the tweets and replies from an user' do
            
            expect(get("/users/#{user_test.id}/tweets_and_replies")).to route_to(
                controller: "users",
                action: "tweets_and_replies",
                user_id: "#{user_test.id.to_i}"
            )
        end
    end

    context 'Routing test' do
        
        existent_user = rand(1..40)
        it 'Liked tweet' do
            expect(post("/tweets/#{existent_user}/like")).to route_to(
                controller: "tweets",
                action: "like",
                id: "#{existent_user.to_i}")
        end
        
        it 'Unlike a tweet' do
            expect(delete("/tweets/#{existent_user}/unlike")).to route_to(
                controller: "tweets",
                action: "unlike",
                id: "#{existent_user.to_i}"
            )
        end

        it 'Make a retweet from a tweet' do
            expect(post("/tweets/#{existent_user}/retweet")).to route_to(
                controller: "tweets",
                action: "retweet",
                id: "#{existent_user.to_i}"
            )
        end

        it 'Make a quote from a tweet' do
            expect(post("/tweets/#{existent_user}/quote")).to route_to(
                controller: "tweets",
                action: "quote",
                id: "#{existent_user.to_i}"
            )
        end

        it 'Make a reply from a tweet' do
            expect(post("/tweets/#{existent_user}/reply")).to route_to(
                controller: "tweets",
                action: "reply",
                id: "#{existent_user.to_i}"
            )
        end

        it 'Make a bookmark from a tweet' do
            expect(post("/tweets/#{existent_user}/bookmark")).to route_to(
                controller: "tweets",
                action: "bookmark",
                id: "#{existent_user.to_i}"
            )
        end

        it 'Create a new tweet' do
            expect(post("/tweets")).to route_to("tweets#create")
        end

        it 'Route to create a new tweet' do
            expect(get("/tweets/new")).to route_to("tweets#new")
        end

        it 'Update a tweet' do
            expect(patch("/tweets/1")).to route_to(
                controller: "tweets",
                action: "update",
                id: "#{1.to_i}")
        end

        it 'Update a tweet' do
            expect(put("/tweets/1")).to route_to(
                controller: "tweets",
                action: "update",
                id: "#{1.to_i}"
            )
        end

    end 

end
