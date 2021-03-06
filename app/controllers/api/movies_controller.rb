class Api::MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @movies = Movie.all
    if params[:language] == "english"
      @movies = @movies.where(english: true)
    end
    render "index.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if @movie.save #happy
      render 'show.json.jb'
    else #sad
      render json: {error: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @movie = Movie.find(params[:id])
    render "show.json.jb"
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    if @movie.save #happy
      render 'show.json.jb'
    else #sad
      render json: {error: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: {message: "Okay...but that was one of the best ones. :("}
  end

end
