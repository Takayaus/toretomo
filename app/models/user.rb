class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :age, presence: true
  mount_uploader :image_name, ImageUploader

  has_many :comments, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_trainers, through: :likes, source: :trainer

  def already_liked?(trainer)
    self.likes.exists?(trainer_id: trainer.id)
  end
end
