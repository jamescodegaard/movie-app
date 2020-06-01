require "http"

response = HTTP.get "http://localhost:3000/api/movies/index"

pp response.parse