class TrainersController < ApplicationController
  def index
    @q = Trainer.ransack(params[:q])
    @trainers = @q.result(distinct: true).includes(:districts, :categories).page(params[:page]).per(12)
    @districts = District.all
    @categories = Category.all
  end


  def show
    @trainer = Trainer.find(params[:id])
    @comments = @trainer.comments
    @comment = @trainer.comments.build
    @like = Like.new
  end

end
