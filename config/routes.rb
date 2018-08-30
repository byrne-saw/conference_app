Rails.application.routes.draw do
  namespace :api do
    get "/id_6" => 'speakers#id_6_action'
    get "/all_meetings" => 'meetings#meetings_all'
  end
end
