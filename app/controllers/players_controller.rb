class PlayersController < ApplicationController

  def show
    @player = Player.find(params[:id])
    @games = Game.all
     array_how_many_games = []

     @games.each do |game|
       if game.player_id == @player.id
         array_how_many_games << game.id
       end
     end
     @player.number_games_played = array_how_many_games.count
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

    array_how_many_games = []

    @games.each do |game|
      if game.player_id == @player.id
        array_how_many_games << game.id
      end
    end
    @player.number_games_played = array_how_many_games.count
  end


end
