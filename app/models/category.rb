class Category < ApplicationRecord
    has_many :gym_categories
    has_many :gyms, through: :gym_categories
end
