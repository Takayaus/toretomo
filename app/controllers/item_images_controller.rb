class ItemImagesController < ApplicationController
  def show
    @item_image = find(params[:id])
  end
end
