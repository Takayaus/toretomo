class District < ApplicationRecord
    has_many :gyms
    accepts_nested_attributes_for :gyms, allow_destroy: true
end
