class User < ActiveRecord::Base
  has_one :fantasy_team
  has_many :players, through: :fantasy_team
end
