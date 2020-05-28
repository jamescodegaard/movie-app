class Api::ActorsController < ApplicationController

  def one_actor_action
    @actor = Actor.first
    render "one_actor.json.jb"
  end

end
