class Roote < ApplicationRecord
  belongs_to :author, class_name: 'User', optional: true
  has_many :comments
  has_many :commentors, through: :comments, source: 'User'

  validates :name, :content, :category, :location, :difficulty, presence: true
end
