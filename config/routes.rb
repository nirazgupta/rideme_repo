Myrottenpotatoes::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  #devise_for :users, :controllers => { registrations: 'registrations' }
  #devise_for :users, :controllers => { :sessions => "users/sessions" }
  resources :events
  get '/eventspage' => 'events#eventspage'
  root 'events#index'
end

