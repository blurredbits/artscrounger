class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.references :art_pieces, index: true
      t.references :users, index: true

      t.timestamps
    end
  end
end
