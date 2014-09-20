class API::V1::MissionController < ApplicationController

  def index
    @missions = Mission.all
    render json: @missions
  end

  def show
    @mission = Mission.find(params[:id])
    render json: @mission
  end

  def create

  end

  def update

  end

  def destroy

  end
end