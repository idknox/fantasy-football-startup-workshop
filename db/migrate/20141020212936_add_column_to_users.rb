class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :fantasy_teams, :user_id, :integer
  end
end
