class Trainer < ApplicationRecord
    mount_uploader :image, ImageUploader

    has_many :trainer_categories
    has_many :categories, through: :trainer_categories
    accepts_nested_attributes_for :trainer_categories, allow_destroy: true

    has_many :gym_trainers
    has_many :gyms, through: :gym_trainers
    accepts_nested_attributes_for :gym_trainers, allow_destroy: true
end
