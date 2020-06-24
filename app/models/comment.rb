class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gym, optional: true
  belongs_to :trainer, optional: true
end
