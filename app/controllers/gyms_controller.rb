class GymsController < ApplicationController
  def index
    @gyms = Gym.all.order(created_at: :desc)
    
  end

  def show
    @gym = Gym.find(params[:id])
    @comments = @gym.comments
    @comment = @gym.comments.build
  end
end
