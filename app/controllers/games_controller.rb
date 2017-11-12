class GamesController < ApplicationController

# List all games for a particular player
# /players/:player_id/games
# games#index
  def index
    @player = Player.find(params[:player_id])
    @game = Game.where(:player_id => @player.id).to_a
  end

  # Show one specific game for a particular player
  # /players/:player_id/games/:game_id
  def show
    @player = Player.find(params[:player_id])
    @game = Game.where(:player_id => @player.id).to_a
    @categories = Game.get_categories

    @game.each do |one_game|
      if params[:id].to_i == one_game.id
          @this_game = one_game
      end
    end
  end

  # form to begin a new game for a particular player
  # /players/:player_id/games/new
  def new
    @game    = Game.new
    @player  = Player.find(params[:player_id])
  end

  #POST method to create new game for particular player
  # /players/:players_id/games
  def create
    @player  = Player.find(params[:player_id])
    @game    = Game.create({player_id: params[:player_id]})
    @player.save(number_games_played: @player.number_games_played += 1)

    redirect_to "/players/#{@player.id}/games/#{@game.id}"
  end



end
 #      @player = Player.all
 #      @id = @player.find(params[:id])
 #      @game = Games.create({player_id: id, correct_answers: 0, final_score: 0, created_at: DateTime.now})
 #
 #    if @game.save
 #       redirect_to :action => 'list'
 #    else
 #       @players = Player.all
 #       render :action => 'new'
 #    end
 #

# def index
#      @games = Game.all
#
#    end
#
#    def show
#      @player = Player.find(params[:id])
#    end
#
#    def new
#      @game = Game.new
#      @players = Player.all
#      @id = @player.find(params[:id])
#
#    end
#
#    def create
#      @player = Player.all
#      @id = @player.find(params[:id])
#      @game = Games.create({player_id: id, correct_answers: 0, final_score: 0, created_at: DateTime.now})
#
#    if @game.save
#       redirect_to :action => 'list'
#    else
#       @players = Player.all
#       render :action => 'new'
#    end
#
# def game_params
#    params.require(:game).permit(:player_id, :correct_answers, :final_score, :created_at)
# end
#    end
#
#    def edit
#      @game = Game.find(params[:id])
#      @players = Player.all
#    end
#
#    def update
#      @game = Game.find(params[:id])
#
#   if @game.update_attributes(game_param)
#      redirect_to :action => 'show', :id => @game
#   else
#      @players = Player.all
#      render :action => 'edit'
#   end
#
# end
#
# def game_param
#   params.require(:game).permit(:correct_answers, :final_score, :created_at)
# end
#
#
#    def delete
#      Game.find(params[:id]).destroy
#      redirect_to :action => 'list'
#    end
#
#    def show_players
#       @player = Player.find(params[:id])
#    end
