class Mission < ActiveRecord::Base
  has_many      :contests
  has_many      :users, through: :contests
  has_many      :art_pieces

  after_initialize :default_values

  attr_reader :targets
  attr_reader :completed_targets

  def complete?
    @completed_targets.count == 3
  end

  private

  def start_piece
    @start_piece = ArtPiece.all.sample
  end

  def more_pieces
    ArtPiece.near([@start_piece.latitude, @start_piece.longitude], 1).sample(2)
  end

  def build_targets
    @targets = []
    start_piece
    unless more_pieces.include?(start_piece)
      @targets << start_piece
      @targets << more_pieces
    else
      build_targets
    end
    return @targets
  end

  def default_values
    build_targets
    @completed_targets = []
  end
end