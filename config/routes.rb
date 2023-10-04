Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "main#home"

  

  namespace :web do

    get 'new', to: 'users#new' 

    resources :users do  
      get 'tweets', to: 'users#tweets'
      get 'tweets_and_replies', to: 'users#tweets_and_replies'
    end 
 
    resources :users,:tweets do
     resources :likes, only: [:index]
    end
 
    resources :tweets, only: [:new, :index, :show, :create, :update] do
     member do
       post 'retweet', to: 'tweets#retweet'
       post 'quote', to: 'tweets#quote'
       post 'reply', to: 'tweets#reply'
     end

     post 'user_like/:user_id', to: 'tweets#user_like'
     delete 'unlike/:user_id', to: 'tweets#unlike'
       
     post 'bookmark/:user_id', to: 'tweets#bookmark'
     post 'quote/:user_id', to: 'tweets#quote'

    end   
    
  end

  namespace :api do
    
    get 'new', to: 'users#new' 

    resources :users do  
      get 'tweets', to: 'users#tweets'
      get 'tweets_and_replies', to: 'users#tweets_and_replies'
    end 
 
    resources :users,:tweets do
      resources :likes, only: [:index]
    end
 
    resources :tweets, only: [:new, :index, :show, :create, :update] do
      member do
        post 'retweet', to: 'tweets#retweet'
        post 'quote', to: 'tweets#quote'
        post 'reply', to: 'tweets#reply'
      end

      post 'bookmark/:user_id', to: 'tweets#bookmark'
      post 'user_like/:user_id', to: 'tweets#user_like'
      post 'quote/:user_id', to: 'tweets#quote'
      delete 'unlike/:user_id', to: 'tweets#unlike'      
   end

  end

  end