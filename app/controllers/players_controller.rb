class PlayersController < ApplicationController

# list all players (possible leaderboard page- show player's highest score?)
# /players
  def index
    @players = Player.all
    @games  = Game.all

  end

# show player's profile
# /players/:player_id
  def show
    @player = Player.find(params[:id])
    @games = Game.all

  end

# form to create new player
# /players/new
  def new
    @player = Player.new
  end

# post method to create new player in db
  def create
    @players = Player.create({username: params[:player][:username]})
    redirect_to "/players/#{@players.id}/games/new"
  end


# form to edit player record
# /players/id/edit
  def edit
    @player = Player.find(params[:id])
  end


# patch method to update player record
  def update
    @player = Player.find(params[:id])
    @player.update({username: params[:player][:username], favorite_thing: params[:player][:favorite_thing]})
    redirect_to "/players/#{@player.id}"
  end


  # def delete
  #
  # end

  def destroy
    @player = Player.find(params[:id]).delete
    redirect_to "/players"
  end

end



    # array_how_many_games = []
    #
    # @games.each do |game|
    #   if game.player_id == @player.id
    #     array_how_many_games << game.id
    #   end
    # end
    # @player.number_games_played = array_how_many_games.count
