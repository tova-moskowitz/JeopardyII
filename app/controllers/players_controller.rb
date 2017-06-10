class PlayersController < ApplicationController

def show
  @player = Player.find(params[:id])

end

def new
  @player = Player.new
end

def create
  @player = Player.create({username: params["username"], highest_score: 0, number_games_played: 0, })
redirect_to "/games/new"
end
end
