Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get 'users/sign_up'


  namespace 'api' do
    namespace 'v1' do
      resources :animals
    end
  end
end
