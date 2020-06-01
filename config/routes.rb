Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors/show" => "actors#show"
    get "/actors/show/:id" => "actors#show"
    post "/actors/show" => "actors#show"
    get "/movies/index" => "movies#index"
  end
  
end
