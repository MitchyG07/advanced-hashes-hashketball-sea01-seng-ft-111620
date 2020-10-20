require "pry"

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  game_hash.each do |location, team_data|
    # binding.pry
    team_data.each do |attribute, data|
      if attribute == :players 
        data.each do |data_item, element|
          if data_item[:player_name] == player_name 
            puts data_item[:points]
            return data_item[:points]
          end 
        end 
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players 
        data.each do |data_item, element|
          if data_item[:player_name] == player_name 
            puts data_item[:shoe]
            return data_item[:shoe]
          end 
        end 
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
     if data == team_name
      team_data.each do |name, array| 
        if name == :colors 
          puts array
          return array 
        end 
      end 
     end 
    end
  end
end

def team_names()
  name_array = []
  game_hash.each do |location, team_data| 
    team_data.each do |attribute, data| 
      if attribute == :team_name
        name_array.push(data)
      end
    end 
  end 
  name_array 
end 

def player_numbers(team_name)
  number_array = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data == team_name 
       team_data.each do |attribute, data|
        if attribute == :players 
          data.each do |data_item, element|
            number_array << data_item[:number]
          end
        end
       end 
      end
    end
  end
  number_array 
end

def player_stats(player_name)
  stats = {}
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players 
        data.each do |data_item, element|
          if data_item[:player_name] == player_name 
            stats = data_item
          end 
        end 
      end
    end
  end
  stats 
end

def big_shoe_rebounds 
  shoe_array = []
  largest_shoe_rebounds = ""
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players 
        data.each do |data_item, element|
          shoe_array << data_item[:shoe]
        end
      end
    end
  end
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players 
        data.each do |data_item, element|
          if data_item[:shoe] == shoe_array.max()
            largest_shoe_rebounds = data_item[:rebounds]
          end 
        end
      end
    end
  end
  largest_shoe_rebounds
end

  
big_shoe_rebounds

