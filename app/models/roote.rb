class Roote < ApplicationRecord
  belongs_to :author, class_name: 'User', optional: true
  has_many :comments
  has_many :commentors, through: :comments, source: 'user'
end
