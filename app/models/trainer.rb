class Trainer < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :trainer_categories
    has_many :categories, through: :trainer_categories
    accepts_nested_attributes_for :trainer_categories, allow_destroy: true
end
