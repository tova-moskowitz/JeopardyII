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

end



    # array_how_many_games = []
    #
    # @games.each do |game|
    #   if game.player_id == @player.id
    #     array_how_many_games << game.id
    #   end
    # end
    # @player.number_games_played = array_how_many_games.count
