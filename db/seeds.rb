# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
# actor.save

# new_movie = Movie.new(title: "The Shining", year: 1980, plot: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future. -IMDB Description")
# new_movie.save

# new_movie = Movie.new(title: "Bring It On", year: 2000, plot: "A champion high school cheerleading squad discovers its previous captain stole all their best routines from an inner-city school and must scramble to compete at this year's championships. -IMDB Description")
# new_movie.save

# new_movie = Movie.new(title: "Doctor Sleep", year: 2019, plot: "Years following the events of The Shining (1980), a now-adult Dan Torrance must protect a young girl with similar powers from a cult known as The True Knot, who prey on children with powers to remain immortal. -IMDB Description")
# new_movie.save

# new_movie = Movie.new(title: "Gladiator", year: 2000, plot: "A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery. -IMDB Description")
# new_movie.save

genres = Genre.create([
  { name: 'Comedy' }, 
  { name: 'Horror' }, 
  { name: 'Thriller' }, 
  { name: 'Action' }, 
  { name: 'Romantic Comedy'},
  { name: 'SciFi'},
  { name: 'Drama'}
  ])

movie_genres = MovieGenre.create([
  { movie_id: 1, genre_id: 1}, 
  { movie_id: 2, genre_id: 6}, 
  { movie_id: 3, genre_id: 3}, 
  { movie_id: 4, genre_id: 2}, 
  { movie_id: 4, genre_id: 3},
  { movie_id: 6, genre_id: 3},
  { movie_id: 8, genre_id: 1},
  { movie_id: 9, genre_id: 5},
  { movie_id: 11, genre_id: 2},
  { movie_id: 10, genre_id: 7}
  ])