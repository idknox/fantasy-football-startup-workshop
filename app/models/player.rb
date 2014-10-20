class Player < ActiveRecord::Base
  belongs_to :nfl_team
  belongs_to :fantasy_team

  has_many :injuries
  has_many :stats

  def point_count
    stats.inject(0) { |points, stat| points + stat.yards }
  end
end