Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#index'

  resources :game
  resources :player

  get '/session/new' => 'session#new'
  post '/session' => 'session#create'
  get '/session/delete' => 'session#destroy'

 #  Prefix Verb   URI Pattern                Controller#Action
 #         root GET    /                          games#index
 #   game_index GET    /game(.:format)            game#index
 #              POST   /game(.:format)            game#create
 #     new_game GET    /game/new(.:format)        game#new
 #    edit_game GET    /game/:id/edit(.:format)   game#edit
 #         game GET    /game/:id(.:format)        game#show
 #              PATCH  /game/:id(.:format)        game#update
 #              PUT    /game/:id(.:format)        game#update
 #              DELETE /game/:id(.:format)        game#destroy
 # player_index GET    /player(.:format)          player#index
 #              POST   /player(.:format)          player#create
 #   new_player GET    /player/new(.:format)      player#new
 #  edit_player GET    /player/:id/edit(.:format) player#edit
 #       player GET    /player/:id(.:format)      player#show
 #              PATCH  /player/:id(.:format)      player#update
 #              PUT    /player/:id(.:format)      player#update
 #              DELETE /player/:id(.:format)      player#destroy

  end
