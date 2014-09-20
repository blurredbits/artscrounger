class ArtPiece < ActiveRecord::Base
  geocoded_by :address

  belongs_to :mission

  def photo_url
    
  end

end
