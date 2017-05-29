# require 'pry'
require 'time'
require 'date'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# binding.pry

random_dates = Time.at(Random.rand((Time.now - (60*60*24*365*5)).to_f..Time.now.to_f))
now = Time.now
# puts random_dates


# Player.create({player_id: 1, player_fname: "tova", player_lname: "tee", current_score: 0, total_score: 200})
Player.destroy_all
Game.destroy_all

# id | username | highest_score | number_games_played
Player.create(username: "Tova", highest_score: 1300, number_games_played: 2)
Player.create(username: "Rambo", highest_score: 1400, number_games_played: 1)
Player.create(username: "Rosalie", highest_score: 63400, number_games_played: 4)
Player.create(username: "Erik", highest_score: 23300, number_games_played: 2)
Player.create(username: "Tova", highest_score: 500, number_games_played: 5)


# id | player_id | correct_answers | final_score | created_at

Game.create!(player_id: 1, correct_answers: 4, final_score: 200, created_at: Time.at(Random.rand((Time.now - (60*60*24*365*5)).to_f..Time.now.to_f)))
Game.create!(player_id: 2, correct_answers: 10, final_score: 2000, created_at: Time.at(Random.rand((Time.now - (60*60*24*365*5)).to_f..Time.now.to_f)))
Game.create!(player_id: 3, correct_answers: 14, final_score: 2030, created_at: Time.at(Random.rand((Time.now - (60*60*24*365*5)).to_f..Time.now.to_f)))
Game.create!(player_id: 4, correct_answers: 24, final_score: 45452, created_at: Time.at(Random.rand((Time.now - (60*60*24*365*5)).to_f..Time.now.to_f)))
Game.create!(player_id: 5, correct_answers: 31, final_score: 424123, created_at: Time.at(Random.rand((Time.now - (60*60*24*365*5)).to_f..Time.now.to_f)))
