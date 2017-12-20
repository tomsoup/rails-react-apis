module Api::V1
  class IdeasController < ApplicationController
    def index
      @ideas = Idea.all
      render json: @ideas
    end

    def create
      @ideas = Idea.create(idea_params)
      render json: @idea
    end

    private

    def idea_params
      params.require(:idea).permit(:title, :body)
    end
  end
end
