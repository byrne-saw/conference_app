Rails.application.routes.draw do
  namespace :api do
    get "/id_6" => 'speakers#id_6_action'
    get "/all_meetings" => 'meetings#meetings_all'

    get "/meetings" => 'meetings#index'
    post "/meetings" => 'meetings#create'
    get "/meetings/:id" => 'meetings#show'
    patch "/meetings/:id" => 'meetings#update'
    delete "/meetings/:id" => 'meetings#destroy'

    get "/speakers" => 'speakers#index'
    post "/speakers" => 'speakers#create'
    get "/speakers/:id" => 'speakers#show'
    patch "/speakers/:id" => 'speakers#update'
    delete "/speaers/:id" => 'speakers#destroy'
  end
end
