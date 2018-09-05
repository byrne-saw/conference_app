Rails.application.routes.draw do
  namespace :api do
    get "/id_6" => 'speakers#id_6_action'
    get "/all_meetings" => 'meetings#meetings_all'

    get "/meetings" => 'meetings#index'
    post "/meetings" => 'meetings#create'
    get "/meetings/:id" => 'meetings#show'
    patch "/meetings/:id" => 'meetings#update'
    delete "/meetings/:id" => 'meetings#destroy'


  end
end
