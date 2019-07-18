class Roote < ApplicationRecord
  belongs_to :author, class_name: 'User', optional: true
  has_many :comments
  has_many :commentors, through: :comments, source: 'User'

  validates :name, presence: true
  validates :content, presence: true
  validates :category, presence: true
  validates :location, presence: true
  validates :difficulty, presence: true
end
