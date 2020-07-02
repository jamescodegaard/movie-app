require "http"

response = HTTP.get "https://true-beaver-74732.herokuapp.com/api/movies"

pp response.parse