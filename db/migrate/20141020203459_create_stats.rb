class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.belongs_to :player, index: true
      t.belongs_to :week, index: true
      t.integer :yards

      t.timestamps
    end
  end
end
