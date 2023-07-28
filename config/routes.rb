Rails.application.routes.draw do
  get 'sessions/new'
  devise_for :users
  resources :users
  resources :animals
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #get 'users/sign_up'
  #get 'home/index'
  # Defines the root path route ("/")
  #root "home#index"
  

  namespace 'api' do
    namespace 'v1' do
      resources :animals
      resources :users
    end
  end
end
