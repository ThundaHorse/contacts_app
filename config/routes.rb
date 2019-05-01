Rails.application.routes.draw do
  namespace :api do 
    get '/contacts_url' => 'contacts#contacts_action'
    get '/all_contacts_url' => 'contacts#all_contacts_action'
  end 
end
