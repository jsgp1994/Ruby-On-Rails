Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/health', to: 'health#health'
  resources :posts, only:[:index, :show, :create, :update]
  get '/login', to: 'auth#login'

  post '/ciclo', to: 'test#_recorer_objeto'

end
