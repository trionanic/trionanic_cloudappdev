Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  
  #on get request for light_switch ( to display the light_switch page) 
  #map the end_point light_switch to the switch method in the light_switch controller
  get '/light_switch' , :controller => 'light_switch' , :action => 'switch'

  #for post request from light_switch (send data from the light_switch page )
  #map the end point light_switch to the switch method in the light_switch controller

  post '/light_switch' , :controller => 'light_switch' , :action => 'switch'
   
end
