class Gym < ApplicationRecord
    has_many :item_images
    mount_uploader :image, ImageUploader
end
