class Api::V1::TeamsController < ApplicationController
  before_action :find_team, only: [:update, :destroy]
  def index
    @teams = Team.all
    render json: @teams
  end
  def create
    @team = Team.create(team_params)
    render json: @team, status: :accepted
  end
  def update
    @team.update(team_params)
    if @team.save
      render json: @team, status: :accepted
    else
      render json: { errors: @team.errors.full_messages }, status: :unprocessible_entity
    end
  end
  def destroy
    @team.destroy
    render json: { message: “removed” }, status: :ok
  end
  private

  def team_params
    params.require(:team).permit(:team_name, :pitch_title, :pitch_topic, :pitch_description, :pitch_problem, :pitch_solution)
  end

  def find_team
    @team = Team.find(params[:id])
  end
end
