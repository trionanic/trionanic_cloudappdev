Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :movies do
    resources :reviews
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root :controller=>'movies', :action=>'index'
end
