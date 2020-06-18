Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # create Actor routes
    get "/actors" => "actors#index"
    post "/actors" => "actors#create"
    get "/actors/:id" => "actors#show"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"

    # create Movie routes
    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    get "/movies/:id" => "movies#show"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    # create User routes
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    # create MovieGenre routes
    post "/movie_genres" => "movie_genres#create"
  end
  
end
