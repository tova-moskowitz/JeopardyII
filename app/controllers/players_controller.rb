class PlayersController < ApplicationController

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @players = Player.create({username: params[:player][:username]})
    redirect_to "/players/#{@players.id}"
  end

end
