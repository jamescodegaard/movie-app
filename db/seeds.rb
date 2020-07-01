Movie.create!([
  {title: "Romy & Michele's High School Reunion", year: 1997, plot: "Two dim-witted, inseparable friends hit the road for their ten-year high school reunion and concoct an elaborate lie about their lives in order to impress their classmates. -IMDB Description", director: nil, english: true},
  {title: "Contact", year: 1997, plot: "Dr. Ellie Arroway, after years of searching, finds conclusive radio proof of extraterrestrial intelligence, sending plans for a mysterious machine. -IMDB Description", director: nil, english: true},
  {title: "Bring It On", year: 2000, plot: "A champion high school cheerleading squad discovers its previous captain stole all their best routines from an inner-city school and must scramble to compete at this year's championships. -IMDB Description", director: nil, english: true},
  {title: "Doctor Sleep", year: 2019, plot: "Years following the events of The Shining (1980), a now-adult Dan Torrance must protect a young girl with similar powers from a cult known as The True Knot, who prey on children with powers to remain immortal. -IMDB Description", director: nil, english: true},
  {title: "To Wong Foo", year: 1995, plot: "Three drag queens travel cross-country until their car breaks down, leaving them stranded in a small town. -IMDB Description", director: nil, english: true},
  {title: "Knives Out", year: 2019, plot: "A detective investigates the death of a patriarch of an eccentric, combative family. - IMDB Description", director: "Rian Johnson", english: true},
  {title: "The Shining", year: 1980, plot: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future. -IMDB Description", director: nil, english: false},
  {title: "The Devil Wears Prada", year: 2006, plot: "A smart but sensible new graduate lands a job as an assistant to Miranda Priestly, the demanding editor-in-chief of a high fashion magazine. -IMDB Description", director: "David Frankel", english: true},
  {title: "The Imitation Game", year: 2014, plot: "During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians. -IMDB Description", director: "Morten Tyldum", english: true},
  {title: "A Quiet Place", year: 2018, plot: "In a post-apocalyptic world, a family is forced to live in silence while hiding from monsters with ultra-sensitive hearing. -IMDB Description", director: "John Krasinski", english: true}
])
Actor.create!([
  {first_name: "Emily", last_name: "Blunt", known_for: "The Devil Wear's Prada", gender: "F", age: 37, movie_id: 8},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "M", age: 43, movie_id: 9},
  {first_name: "John", last_name: "Krasinski", known_for: "A Quiet Place", gender: "M", age: 40, movie_id: 10},
  {first_name: "RuPaul", last_name: "Charles", known_for: "To Wong Foo", gender: "M", age: 59, movie_id: 5}
])
Genre.create!([
  {name: "Comedy"},
  {name: "Horror"},
  {name: "Thriller"},
  {name: "Action"},
  {name: "Romantic Comedy"},
  {name: "SciFi"},
  {name: "Drama"}
])
MovieGenre.create!([
  {genre_id: 1, movie_id: 1},
  {genre_id: 6, movie_id: 2},
  {genre_id: 1, movie_id: 3},
  {genre_id: 3, movie_id: 4},
  {genre_id: 2, movie_id: 4},
  {genre_id: 3, movie_id: 5},
  {genre_id: 1, movie_id: 6},
  {genre_id: 5, movie_id: 7},
  {genre_id: 2, movie_id: 8},
  {genre_id: 4, movie_id: 10},
  {genre_id: 2, movie_id: 10}
])
User.create!([
  {name: "kameron", email: "k@gmail.com", password_digest: "$2a$12$Mlwm3i01adhquY0WR9MG7OQIvrGxYwqaHG0Ahh1oTGZ7kdZ/eaDwK", admin: false},
  {name: "james", email: "james@gmail.com", password_digest: "$2a$12$fQNJTLk8VJWZBCCxJK/ktusl742z200u5hfEMHeUiW8GGO.fSyMIu", admin: true}
])
