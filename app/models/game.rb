class Game < ActiveRecord::Base
  belongs_to :away_team, class_name: 'NflTeam'
  belongs_to :home_team, class_name: 'NflTeam'
end
