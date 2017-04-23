class GamesController < ApplicationController

  def index
    @game = Game.all
		@Player = Player.all
		@Player = Player.find_by(params["id"])
    @id = params["id"]
    
  end


  def new
    @game = Game.new
  end

  end
