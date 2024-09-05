Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  root "user#new"

  get "dashboard", to: "user#index", as: :dashboard
  get "dashboard/:id", to: "user#list", as: :user_list
  get "registerform", to: "user#new", as: :register_user
  post "registerform", to: "user#create", as: :create_user

  get '/users/:id/edit', to: 'user#edit', as: :edit_user
  patch '/users/:id', to: 'user#update', as: :user




  # Defines the root path route ("/")
  # root "posts#index"
  
end
