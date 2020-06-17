class Api::MovieGenresController < ApplicationController
  before_action :authenticate_user

  def create
    @movie_genre = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    if @movie_genre.save #happy
      render 'show.json.jb'
    else #sad
      render json: {error: @movie_genre.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
