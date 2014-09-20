class CreateArtPieces < ActiveRecord::Migration
  def change
    create_table :art_pieces do |t|
      t.string  :collection
      t.string  :media
      t.string  :address
      t.string  :title
      t.string  :artist
      t.integer :year
      t.float   :latitude
      t.float   :longitude
      t.string  :image

      t.timestamps
    end
  end
end
