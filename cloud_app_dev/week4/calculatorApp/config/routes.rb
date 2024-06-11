Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  
  #Map get requests on the calculate page 
  #to the calculate action on the calculator controller
  get '/calculate', :controller=>'calculator', :action=>'calculate'
  
  # Support refresh of the /sum page 
  get '/sum', :controller=>'calculator', :action=>'sum'
  
  # Map POST requests on the /sum form to the sum action in the calculator controller n
  post '/sum', :controller=>'calculator', :action=>'sum'
end
