class Api::ActorsController < ApplicationController

  def show
    @actor = Actor.find(params[:id])
    render "show.json.jb"
  end

end
