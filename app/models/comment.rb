class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :roote

  validates :content, presence: true
end
