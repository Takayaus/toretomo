class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gym, optional: true
end
