class GymTrainer < ApplicationRecord
  belongs_to :gym
  belongs_to :trainer
end
