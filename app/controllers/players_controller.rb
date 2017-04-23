class GamesController < ApplicationController

def new

  @player = Players.new
  @id = params["players_id"]
  @game = Games.new


end
