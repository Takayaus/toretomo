class Category < ApplicationRecord
    has_many :gym_categories
    has_many :gym, through: :gym_categories
end
