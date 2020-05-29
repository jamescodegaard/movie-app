Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/one_actor_url" => "actors#one_actor_action"
    get "/all_movies_url" => "movies#all_movies_action"
  end
  
end
