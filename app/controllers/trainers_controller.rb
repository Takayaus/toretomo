class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @comments = @trainer.comments
    @comment = @trainer.comments.build
  end
end
