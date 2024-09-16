Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  root "user#index"

  get "dashboard", to: "user#index", as: :dashboard

  get "dashboard/new", to: "user#new", as: :register_user
  post "dashboard", to: "user#create", as: :create_user

  get '/dashboard/:id/edit', to: 'user#edit', as: :edit_user
  patch '/dashboard/:id', to: 'user#update', as: :user

  get '/dashboard/:id/delete', to: 'user#delete', as: :delete
  delete '/dashboard/:id', to: 'user#destroy', as: :delete_user



  # Defines the root path route ("/")
  # root "posts#index"
  
end
