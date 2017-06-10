Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'games#index'

  resources   :games
  resource    :player

  get   '/session/new' => 'session#new'
  post  '/session' => 'session#create'
  get   '/session/delete' => 'session#destroy'
#   Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         games#index
# game_index GET    /game(.:format)           game#index
#           POST   /game(.:format)           game#create
#  new_game GET    /game/new(.:format)       game#new
# edit_game GET    /game/:id/edit(.:format)  game#edit
#      game GET    /game/:id(.:format)       game#show
#           PATCH  /game/:id(.:format)       game#update
#           PUT    /game/:id(.:format)       game#update
#           DELETE /game/:id(.:format)       game#destroy
# new_player GET    /player/new(.:format)     players#new
# edit_player GET    /player/edit(.:format)    players#edit
#    player GET    /player(.:format)         players#show
#           PATCH  /player(.:format)         players#update
#           PUT    /player(.:format)         players#update
#           DELETE /player(.:format)         players#destroy
#           POST   /player(.:format)         players#create
# session_new GET    /session/new(.:format)    session#new
#   session POST   /session(.:format)        session#create
# session_delete GET    /session/delete(.:format) session#destroy
  end
