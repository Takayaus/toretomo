class Trainer < ApplicationRecord
    mount_uploader :image, ImageUploader

    has_many :trainer_categories
    has_many :categories, through: :trainer_categories
    accepts_nested_attributes_for :trainer_categories, allow_destroy: true

    has_many :gym_trainers
    has_many :gyms, through: :gym_trainers
    accepts_nested_attributes_for :gym_trainers, allow_destroy: true

    has_many :trainer_districts
    has_many :districts, through: :trainer_districts
    accepts_nested_attributes_for :trainer_districts, allow_destroy: true

    has_many :comments, dependent: :destroy

    has_many :likes
    has_many :liked_users, through: :likes, source: :user
    enum sex: { 男性: 0, 女性: 1}
end
