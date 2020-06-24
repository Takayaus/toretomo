class StaticPagesController < ApplicationController
  def home
    @gyms = Gym.order(created_at: :desc).limit(4)
    @trainers = Trainer.order(created_at: :desc).limit(10)
  end
end
