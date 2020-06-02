Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors" => "actors#show"
    get "/actors/:id" => "actors#show"
    post "/actors" => "actors#show"
    get "/movies => "movies#index"
  end
  
end
