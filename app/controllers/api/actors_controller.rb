class Api::ActorsController < ApplicationController
  
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @actors = Actor.all
    if params[:sort] == "age"
      @actors = @actors.order(age: :desc)
    end
    render "index.json.jb"
  end
  
  def show
    @actor = Actor.find(params[:id])
    render "show.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      gender: params[:gender],
      known_for: params[:known_for],
      movie_id: params[:movie_id].to_i
    )
    if @actor.save #happy
      render 'show.json.jb'
    else #sad
      render json: {error: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @actor = Actor.find(params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.age = params[:age] || @actor.age
    @actor.gender = params[:gender] || @actor.gender
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.movie_id = params[:movie_id].to_i || @actor.movie_id
    if @actor.save #happy
      render 'show.json.jb'
    else #sad
      render json: {error: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    render json: {message: "Awww they don't deserve to be forgotten!!"}
  end

end
