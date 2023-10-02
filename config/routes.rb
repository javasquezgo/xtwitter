Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
  
    resources :users do
      member do
       get 'tweets', to: 'users#tweets'
       get 'tweets_and_replies', to: 'users#tweets_and_replies'
      end
   end 
 
   resources :users do
     resources :likes, only: [:index]
   end
 
   resources :tweets, only: [:new, :index, :show, :create, :update] do
     member do
       post 'like', to: 'tweets#like'
       delete 'unlike', to: 'tweets#unlike'
       post 'retweet', to: 'tweets#retweet'
       post 'quote', to: 'tweets#quote'
       post 'reply', to: 'tweets#reply'
       post 'bookmark', to: 'tweets#bookmark'
     end
   end

  end

end