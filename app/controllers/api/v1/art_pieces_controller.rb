class API::V1::ArtPiecesController < ApplicationController
  
  def index
    @artpieces = ArtPiece.all
    render json: @artpieces
  end

  def show
    @artpiece = ArtPiece.find(params[:id])
    render json: @artpiece
  end

  def create; end

  def update; end

  def destroy; end
end