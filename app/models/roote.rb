class Roote < ApplicationRecord
  belongs_to :author, class_name: 'User', optional: true
  has_many :comments
  has_many :commentors, through: :comments, source: 'User'

  validates :name, :content, :category, :location, :difficulty, presence: true

  scope :canyon, -> { where(category: "Canyon") }
  scope :boulder, -> { where(category: "Boulder") }
  scope :sport, -> { where(category: "Sport") }
  scope :trad_aid, -> { where(category: "Trad/Aid") }
  scope :ice_alpine, -> { where(category: "Ice/Alpine") }
end