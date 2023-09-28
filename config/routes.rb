Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :tweets, only: [:new, :create]

  resources :tweets, only: [:edit, :update]

  resources :tweet, only: [:new, :create, :update] do
    member do
      get :action
    end
  end



  #All user routes
  #get '/users', to: "users#index"
  #New user route
  #get '/users/new', to: "users#new"
  #Creater user route
  #post '/users', to: "users#create"
  #Show user route  
  #get '/users/:id', to: "users#show"
  #Edit user route
  #get '/users/:id/edit', to: "users#edit"
  #Update user route
  #put '/users/:id', to: "users#update"
  #Delete user route
  #delete '/users/:', to: "users#destroy"

end
