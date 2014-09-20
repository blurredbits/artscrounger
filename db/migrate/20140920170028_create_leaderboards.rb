class CreateLeaderboards < ActiveRecord::Migration
  def change
    create_table :leaderboards do |t|
      t.string      :name
      t.references  :users, index: true

      t.timestamps
    end
  end
end
