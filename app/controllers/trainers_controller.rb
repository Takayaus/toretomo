class TrainersController < ApplicationController
  def index
    @q = Trainer.ransack(params[:q])
    @trainers = @q.result(distinct: true).includes(:districts, :categories).page(params[:page]).per(12)
    @districts = District.all
    @categories = Category.all
  end

  def search
    @q = Trainer.search(search_params)
    @trainer = @q.result(distinct: true).includes(:districts, :categories)
  end

  def show
    @trainer = Trainer.find(params[:id])
    @comments = @trainer.comments
    @comment = @trainer.comments.build
    @like = Like.new
  end

    private
  def search_params
    params.require(:q).permit!
  end
end
