class CreateInjuredPlayers < ActiveRecord::Migration
  def change
    create_table :injuries do |t|
      t.belongs_to :player, index: true
      t.belongs_to :week, index: true

      t.timestamps
    end
  end
end
