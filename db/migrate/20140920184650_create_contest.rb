class CreateContest < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.integer :user_id
      t.integer :mission_id
    end
  end
end
