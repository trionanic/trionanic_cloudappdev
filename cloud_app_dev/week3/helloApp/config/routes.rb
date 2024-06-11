Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # use the hello controller and the hello html page 
  #root :controller=>'hello' , :action=>'hello'
  
  # post '/', :controller=>'hello', :action=>'say_hello'
  
  # map get on hello to  HelloController and its hello method 
  get '/hello', :controller=>'hello', :action=>'hello'
  get '/say_hello', :controller=>'hello', :action=>'say_hello'
  post '/say_hello', :controller=>'hello', :action=>'say_hello'
  post '/hello', :controller=>'hello', :action=>'say_hello'
  
end
