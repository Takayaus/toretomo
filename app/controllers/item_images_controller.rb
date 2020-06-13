class ItemImagesController < ApplicationController

  def index
    @gym = Gym.find(params[:gym_id])
    @item_images = @gym.item_images.all
  end
end
