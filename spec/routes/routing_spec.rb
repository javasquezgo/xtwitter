require 'rails_helper'

RSpec.describe 'Tweets routing', type: :routing do
    
    context 'Routing test of Users' do
        
        it 'Check if it is given an user' do
            expect(get("/users")).to route_to("users#index")  
        end

        it 'Check if the route gives the tweets from an user' do
            expect(patch("/users/2/tweets")).to route_to("users#tweets")
        end

        it 'Check if the route gives the tweets and replies from an user' do
            expect(patch("/users/2/tweets_and_replies")).to route_to("users#tweets_and_replies")
        end
    end

    context 'Routing test' do
        
        it 'Liked tweet' do
            expect(post("/tweet/1/like")).to route_to("tweets#like")
        end
        
        it 'Unlike a tweet' do
            expect(delete("/tweet/1/unlike")).to route_to("tweets#unlike")
        end

        it 'Make a retweet from a tweet' do
            expect(post("/tweet/1/retweet")).to route_to("tweets#retweet")
        end

        it 'Make a quote from a tweet' do
            expect(post("/tweet/1/quote")).to route_to("tweets#quote")
        end

        it 'Make a reply from a tweet' do
            expect(post("/tweet/1/reply")).to route_to("tweets#reply")
        end

        it 'Make a bookmark from a tweet' do
            expect(post("/tweet/1/bookmark")).to route_to("tweets#bookmark")
        end

        it 'Create a new tweet' do
            expect(post("/tweet")).to route_to("tweets#create")
        end

        it 'Route to create a new tweet' do
            expect(get("/tweet/new")).to route_to("tweets#new")
        end

        it 'Update a tweet' do
            expect(patch("/tweet/1")).to route_to("tweets#update")
        end

        it 'Update a tweet' do
            expect(put("/tweet/1")).to route_to("tweets#update")
        end

    end 

end

=begin 
        it 'Rout post /tweet/:id/like to tweets#like' do
            expect(post: "tweet/1/like").to route_to(
                controller: "tweets",
                action: "like",
                id: 1
            )
        end 
=end