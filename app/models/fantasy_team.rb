class FantasyTeam < ActiveRecord::Base
  has_many :players
  belongs_to :user

  def point_total
    puts players.map(&:point_count).reduce(:+)
    players.inject(0) { |points, player| points + player.point_count }
  end
end
