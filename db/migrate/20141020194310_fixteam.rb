class Fixteam < ActiveRecord::Migration
  def change
    rename_column :players, :team_id, :nfl_team_id
  end
end
