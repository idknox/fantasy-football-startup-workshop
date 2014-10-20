class NflTeam < ActiveRecord::Base
  has_many :players
  has_many :games
  has_many :home_games, foreign_key: 'home_team_id', class_name: 'Game'
  has_many :away_games, foreign_key: 'away_team_id', class_name: 'Game'
end
