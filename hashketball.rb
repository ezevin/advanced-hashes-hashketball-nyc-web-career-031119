# Write your code here!


def game_hash
  game_hash = {
:home => {
  :team_name => "Brooklyn Nets",
  :colors => ["Black", "White"],
  :players => {"Alan Anderson" => 
    {:number => 0,:shoe => 16,:points => 22,:rebounds => 12,:assists => 12,:steals => 3,:blocks => 1,:slam_dunks => 1},
    "Reggie Evans" =>
    {:number => 30,:shoe => 14,:points => 12,:rebounds => 12,:assists => 12,:steals => 12,:blocks => 12,:slam_dunks => 7},
    "Brook Lopez" =>
    {:number => 11,:shoe => 17,:points => 17,:rebounds => 19,:assists => 10,:steals => 3,:blocks => 1,:slam_dunks => 15},
     "Mason Plumlee" =>
    {:number => 1,:shoe => 19,:points => 26,:rebounds => 12,:assists => 6,:steals => 3,:blocks => 8,:slam_dunks => 5},
     "Jason Terry" =>
    {:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2,:steals => 4, :blocks => 11, :slam_dunks => 1}
  }},
:away => {
  :team_name =>"Charlotte Hornets",
  :colors => ["Turquoise", "Purple"],
  :players => {"Jeff Adrien" => 
    {:number => 4, :shoe => 18,:points => 10, :rebounds => 1,:assists => 1,:steals => 2,:blocks => 7, :slam_dunks => 2},
     "Bismak Biyombo" =>
    {:number => 0, :shoe => 16, :points => 12,:rebounds => 4, :assists => 7,:steals => 7,:blocks => 15, :slam_dunks => 10},
    "DeSagna Diop" => 
    {:number => 2, :shoe => 14,:points => 24, :rebounds => 12,:assists => 12,:steals => 4,:blocks => 5, :slam_dunks => 5},
    "Ben Gordon" => 
    {:number => 8, :shoe => 15,:points => 33, :rebounds => 3,:assists => 2,:steals => 1,:blocks => 1, :slam_dunks => 0},
    "Brendan Haywood" => 
    {:number => 33, :shoe => 15,:points => 6, :rebounds => 12,:assists => 12,:steals => 22,:blocks => 5, :slam_dunks => 12}
  }}}
end
def num_points_scored(player)
    game_hash.each do |location, team_data|
        team_data[:players].each do |name, stats|
         
           if name == player
            return stats[:points]

           end 
         end 
       end 
end


# #def num_points_scored(player)
# if game_hash[:home][:players].keys.include?(player)
#     :players.each do |data, value|
      
#       if player == 
#       if data == player
#       return value
#     end 
#     end 
# else game_hash[:away][:players].keys.include?(player)
#     :players.each do |data, value|
#       data == :points 
#       return value
#     end 
# end 
# end 


 
 

def shoe_size(player)
game_hash.each do |location, team_data|
    game_hash[location].each do |data, name|
      if data == :players
    game_hash[location][data].each do |name, stats|
      if  game_hash[location][data].keys.include?(player)
    game_hash[location][data][name].each do |facts, details|
             if facts == :shoe
               return  details
           end end 
    end end end 
    end  end
end

          
def team_colors(team)
  game_hash.each do |location, team_data|
 if game_hash[location].values.include?(team)
game_hash[location].each do |data, value|
  if data == :colors
   return value
end 
end end end 
end


def team_names
  teams = []
  game_hash.each do |location, team_data|
    teams.push (game_hash[location][:team_name])
  end 
  return teams
end

def player_numbers(team)
  numbers = []
  game_hash.each do |location, team_data|
  if game_hash[location].values.include?(team)
    game_hash[location].each do |data, name|
      if data == :players
    game_hash[location][data].each do |name, stats|
    game_hash[location][data][name].each do |facts, details|
      if facts == :number
        numbers << details
    end end 
  end 
end end end 
  end 
  return numbers
end 

def player_stats(player)
  game_hash.each do |location, team_data|
  game_hash[location].each do |data, name|
     data == :players
    game_hash[location][:players].each do |name, stats|
   game_hash[location][data][name] == (player)
      return game_hash[location][data][name][stats]
    
  end 
end 
end 
end 

def big_shoe_rebounds
player_name = ""
  shoe_size = 0
  shoes = []
    game_hash.each do |location, team_data|
    game_hash[location].each do |data, name|
      if data == :players
    game_hash[location][data].each do |player, stats|
    game_hash[location][data][player].each do |facts, details|
      if facts == :shoe
# look for the largest shoe size ---------------------
               shoes << details 
               shoes.each do |num|
               num > shoe_size
               shoe_size = num
               player_name = player
# which player is it?--------------------------------
          
       game_hash[location][data].each do |name, stats|
         if name == player_name
      game_hash[location][data][name].each do |data, info|
        if data == :rebounds
          return info
        end  end end  end 
    end end 
    end  end
      end
    end 
    end 
# return the rebounds of above player -----------------
end 

