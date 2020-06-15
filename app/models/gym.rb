class Gym < ApplicationRecord
    has_many :item_images
    mount_uploader :image, ImageUploader
    has_many :gym_categories, dependent: :destroy
    accepts_nested_attributes_for :gym_categories, allow_destroy: true
end