class PlayersController < ApplicationController

  def show
    @player = Player.find(params[:id])
    @games = Game.all
    # binding.pry
  end

  def new
    @player = Player.new
  end

  def create
    @players = Player.create({username: params[:player][:username]})
    redirect_to "/players/#{@players.id}/games/new"
  end

  def stats
    @player = Player.find(params[:id])
    @games = Game.all
  end
end
