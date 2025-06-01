Rails.application.routes.draw do
  get 'cookies/accept'
  get 'cookies/reject'
  get 'appointments/index'
  root to: "pages#home"
  get '/appointments', to: 'appointments#index'
  post "/cookies/accept", to: "cookies#accept"
  post "/cookies/reject", to: "cookies#reject"
  get 'about', to: 'pages#about'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contacts, only: [:create]
end
