Myrottenpotatoes::Application.routes.draw do

  devise_for :users do
  get "/users/logout" => "devise/sessions#destroy", :as => :destroy_user_session
  #get "/users/edit" => "devise/registration#edit", :as => :edit_profile
  end
  #devise_for :users, :controllers => { registrations: 'registrations' }
  #devise_for :users, :controllers => { :sessions => "users/sessions" }
  resources :events
  resources :users
  get '/eventspage' => 'events#eventspage'
  root 'events#index'
end

