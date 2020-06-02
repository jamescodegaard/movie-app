Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # create Actor routes
    get "/actors" => "actors#index"
    post "/actors" => "actors#create"
    get "/actors/:id" => "actors#show"
    patch "actors/:id" => "actors#update"
    delete "actors/:id" => "actors#destroy"

    # create Movie routes
    get "/movies" => "movies#index"
    
  end
  
end
