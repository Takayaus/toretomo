class ItemImage < ApplicationRecord
    belongs_to :gym
    mount_uploader :image, ImageUploader
end
