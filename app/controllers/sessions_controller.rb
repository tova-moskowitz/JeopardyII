class SessionsController < ApplicationController

  # GET /session/new
  # get login page with login form

  def index
    @players = Player.all
    @games = Game.all
  end


  def new
    @player = Player.find_by(params["id"])
  end

  # POST /session
  # create a new session for the user
  def create
    player = Player.find_by(username: params[:username])
    if player && player.authenticate(params[:password])
      session[:player_id] = player.id
      redirect_to "/games/player/#{player.id}"
    else
    # binding.pry
      redirect_to "/"
    end
  end

  # DELETE /session/:id
  # log out of a user's session
  def destroy
    reset_session
    redirect_to "/"
  end

end
