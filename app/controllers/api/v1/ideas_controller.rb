class Api::V1::IdeasController < ApplicationController
  before_action :find_idea, only: [:update, :destroy]
  def index
    @ideas = Idea.all
    render json: @ideas
  end
  def create
    @idea = Idea.create(idea_params)
    render json: @idea, status: :accepted
  end
  def update
    @idea.update(idea_params)
    if @idea.save
      render json: @idea, status: :accepted
    else
      render json: { errors: @idea.errors.full_messages }, status: :unprocessible_entity
    end
  end
  def destroy
    @idea.destroy
    render json: { message: “removed” }, status: :ok
  end
  private

  def idea_params
    params.require(:idea).permit(:title, :topic, :problem, :solution, :audience, :full_name)
  end

  def find_idea
    @idea = Idea.find(params[:id])
  end
end
