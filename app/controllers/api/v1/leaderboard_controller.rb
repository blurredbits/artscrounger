class API::V1::LeaderboardController < ApplicationController

  def index
    @leaderboards = Leaderboard.all?
    render json: @leaderboards
  end

  def show
    @leaderboard = Leaderboard.find(params[:id])
    render json: @leaderboard
  end

  def create

  end

  def update

  end

  def destroy

  end
end