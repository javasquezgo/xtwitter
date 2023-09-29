Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #resources :users

=begin resources :users, only: [] do
    get 'tweets(/page/:page)', to: 'users#tweets'
    get 'tweets_and_replies', to: 'users#tweets_and_replies'
  end 
=end

  resources :user, only: [:index, :edit, :update, :show, :destory] do
    
  end

  resources :tweet, only: [:new, :create, :update] do
    member do
      post 'like', to: 'tweets#like'
      delete 'unlike', to: 'tweets#unlike'
      post 'retweet', to: 'tweets#retweet'
      post 'quote', to: 'tweets#quote'
      post 'reply', to: 'tweets#reply'
      post 'bookmark', to: 'tweets#bookmark'
    end
  end

  #Show user route  
  #get '/users/:id', to: "users#show"

  #All user routes
  #get '/users', to: "users#index"
  #New user route
  #get '/users/new', to: "users#new"
  #Creater user route
  #post '/users', to: "users#create"
  
  #Edit user route
  #get '/users/:id/edit', to: "users#edit"
  #Update user route
  #put '/users/:id', to: "users#update"
  #Delete user route
  #delete '/users/:', to: "users#destroy"

end
