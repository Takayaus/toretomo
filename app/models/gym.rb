class Gym < ApplicationRecord
    has_many :item_images, dependent: :destroy
    mount_uploader :image, ImageUploader
    
    has_many :gym_categories
    has_many :categories, through: :gym_categories, source: :category
    accepts_nested_attributes_for :gym_categories, allow_destroy: true

    has_many :gym_trainers
    has_many :trainers, through: :gym_trainers
    accepts_nested_attributes_for :gym_trainers, allow_destroy: true

    belongs_to :district, optional: true

    has_many :comments, dependent: :destroy

    ransacker :comments_count do
        query = '(SELECT COUNT(comments.gym_id) FROM comments where comments.gym_id = gyms.id GROUP BY comments.gym_id)'
        Arel.sql(query)
    end
end