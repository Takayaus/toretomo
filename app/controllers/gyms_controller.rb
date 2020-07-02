class GymsController < ApplicationController
  def index
    @gyms = Gym.all.page(params[:page]).per(6)
    
  end

  def show
    @gym = Gym.find(params[:id])
    @comments = @gym.comments
    @comment = @gym.comments.build
  end
end
