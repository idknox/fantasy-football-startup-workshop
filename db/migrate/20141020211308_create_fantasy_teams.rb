class CreateFantasyTeams < ActiveRecord::Migration
  def change
    create_table :fantasy_teams do |t|
      t.string :name

      t.timestamps
    end
    add_column :players, :fantasy_team_id, :integer
  end
end
