class Like < ApplicationRecord
  belongs_to :user
  belongs_to :trainer
  validates_uniqueness_of :trainer_id, scope: :user_id
end
