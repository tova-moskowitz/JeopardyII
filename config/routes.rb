Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'session#new'

  resources :players do
    resources :games
  end

  get   '/session/new'         => 'session#new'
  post  '/session'             => 'session#create'
  get   '/session/delete'      => 'session#destroy'

end

# Prefix Verb   URI Pattern                                  Controller#Action
#            root GET    /                                            games#index
#    player_games GET    /players/:player_id/games(.:format)          games#index
#                 POST   /players/:player_id/games(.:format)          games#create
# new_player_game GET    /players/:player_id/games/new(.:format)      games#new
# edit_player_game GET    /players/:player_id/games/:id/edit(.:format) games#edit
#     player_game GET    /players/:player_id/games/:id(.:format)      games#show
#                 PATCH  /players/:player_id/games/:id(.:format)      games#update
#                 PUT    /players/:player_id/games/:id(.:format)      games#update
#                 DELETE /players/:player_id/games/:id(.:format)      games#destroy
#         players GET    /players(.:format)                           players#index
#                 POST   /players(.:format)                           players#create
#      new_player GET    /players/new(.:format)                       players#new
#     edit_player GET    /players/:id/edit(.:format)                  players#edit
#          player GET    /players/:id(.:format)                       players#show
#                 PATCH  /players/:id(.:format)                       players#update
#                 PUT    /players/:id(.:format)                       players#update
#                 DELETE /players/:id(.:format)                       players#destroy
#     session_new GET    /session/new(.:format)                       session#new
#         session POST   /session(.:format)                           session#create
#  session_delete GET    /session/delete(.:format)                    session#destroy
