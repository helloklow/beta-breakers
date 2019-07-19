class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :roote

  validates :content, presence: true

  #scope :all_by_user, -> (user) { where(user: user) }
end
