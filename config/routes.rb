Rails.application.routes.draw do
  namespace :api do 
    get '/contacts' => 'contacts#index' 
    post '/contacts' => 'contacts#create'
    get '/contacts/:id' => 'contacts#show'
    get '/contacts/:id' => 'contacts#update'
  end 
end
