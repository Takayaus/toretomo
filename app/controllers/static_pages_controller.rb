class StaticPagesController < ApplicationController
  def home
    @gyms = Gym.order(created_at: :desc).limit(4)
  end
end
