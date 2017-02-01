# Write your code here!
require "pry"
def game_hash()
  {home: {
    team_name: "Brooklyn Nets",
    colors: ["Black", "White"],
    players: {
      "Alan Anderson" => {
        number: 0,
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1,
        slam_dunks: 1
        },
      "Reggie Evans" => {
        number: 30,
        shoe: 14,
        points: 12,
        rebounds: 12,
        assists: 12,
        steals: 12,
        blocks: 12,
        slam_dunks: 7
        },
      "Brook Lopez" => {
        number: 11,
        shoe: 17,
        points: 17,
        rebounds: 19,
        assists: 10,
        steals: 3,
        blocks: 1,
        slam_dunks: 15
        },
      "Mason Plumlee" => {
        number: 1,
        shoe: 19,
        points: 26,
        rebounds: 12,
        assists: 6,
        steals: 3,
        blocks: 8,
        slam_dunks: 5
        },
      "Jason Terry" => {
        number: 31,
        shoe: 15,
        points: 19,
        rebounds: 2,
        assists: 2,
        steals: 4,
        blocks: 11,
        slam_dunks: 1
        }
      }
    },
  away:{
    team_name: "Charlotte Hornets" ,
    colors: ["Turquoise", "Purple"],
    players: {
      "Jeff Adrien" => {
        number: 4,
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7,
        slam_dunks: 2
        },
      "Bismak Biyombo" => {
        number: 0,
        shoe: 16,
        points: 12,
        rebounds: 4,
        assists: 7,
        steals: 7,
        blocks: 15,
        slam_dunks: 10
        },
      "DeSagna Diop" => {
        number: 2,
        shoe: 14,
        points: 24,
        rebounds: 12,
        assists: 12,
        steals: 4,
        blocks: 5,
        slam_dunks: 5
        },
      "Ben Gordon" => {
        number: 8,
        shoe: 15,
        points: 33,
        rebounds: 3,
        assists: 2,
        steals: 1,
        blocks: 1,
        slam_dunks: 0
        },
      "Brendan Haywood" => {
        number: 33,
        shoe: 15,
        points: 6,
        rebounds: 12,
        assists: 12,
        steals: 22,
        blocks: 5,
        slam_dunks: 12
        }
      }
    }
  }
end


def num_points_scored(player)
  game = game_hash()
  points = 0
  game.each do |team, data|
    data.each do |team_data, data2|
      if team_data == :players
        data2.each do |players, stats|
          if players == player
            points = stats[:points]
          end
        end
      end
    end
  end
  points
end

def shoe_size(player)
  game = game_hash()
  home_players = game[:home][:players].keys
  if home_players.include?(player)
    game[:home][:players][player][:shoe]
  else
    game[:away][:players][player][:shoe]
  end
end


def team_colors(team)
  game = game_hash()
  output=[]
  game.each do |teams, data|
    if data[:team_name] == team
      output = data[:colors]
    end
  end
  output
end

def team_names()
  game = game_hash()
  team_names_array=[]
  game.each do |teams, data|
    team_names_array << data[:team_name]
  end
  team_names_array
end

def player_numbers(team)
  numbers = []
  game = game_hash
  game.each do |teams, data|
    if data[:team_name] == team
      data[:players].each do |players, player_data|
        numbers << player_data[:number]
      end
    end
  end
  numbers
end

def player_stats(player)
  game = game_hash()
  home_players = game[:home][:players].keys
  if home_players.include?(player)
    game[:home][:players][player]
  else
    game[:away][:players][player]
  end
end

def big_shoe_rebounds()
  game = game_hash()
  largest_shoe_player_rebounds = 0
  largest_shoe = 0
  game.each do |teams, data|
    data[:players].each do |players, player_data|
      if player_data[:shoe] > largest_shoe
        largest_shoe_player_rebounds = player_data[:rebounds]
      end
    end
  end
  largest_shoe_player_rebounds
end
