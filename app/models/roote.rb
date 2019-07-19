class Roote < ApplicationRecord
  belongs_to :author, class_name: 'User', optional: true
  has_many :comments
  has_many :commentors, through: :comments, source: 'User'

  validates :name, :content, :category, :location, :difficulty, presence: true

  scope :canyon, -> { where(category: canyon) }
  scope :boulder, -> { where(category: boulder) }
  scope :sport, -> { where(category: sport) }
  scope :trad_aid, -> { where(category: trad_aid) }
  scope :ice_alpine, -> { where(category: ice_alpine) }
end