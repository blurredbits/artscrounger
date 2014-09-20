class API::V1::MissionsController < ApplicationController

  before_filter :get_mission, except: [:create, :index]

  def index
    @missions = Mission.all
    render json: @missions
  end

  def show
    render json: @mission
  end

  def create
    @mission = Mission.new(mission_params)
    save_or_render_error(@mission)
  end

  def update
    @mission.attributes = mission_params
    save_or_render_error(@mission)
  end

  private

  def get_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:name, :art_pieces_id, :user_id)
  end
end