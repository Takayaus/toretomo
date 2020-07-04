class GymsController < ApplicationController
  def index
    @q = Gym.ransack(params[:q])
    @gyms = @q.result(distinct: true).includes(:district, :categories).page(params[:page]).per(7)
      @districts = District.all
      @categories = Category.all
    end


  def show
    @gym = Gym.find(params[:id])
    @comments = @gym.comments
    @comment = @gym.comments.build
  end
end