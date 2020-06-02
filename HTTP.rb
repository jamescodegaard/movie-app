require "http"

response = HTTP.get "http://localhost:3000/api/movies"

pp response.parse