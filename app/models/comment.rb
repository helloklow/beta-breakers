class Comment < ApplicationRecord
  has_many :authored_rootes, class_name: 'roote'
  has_many :comments
  has_many :commented_rootes, through: :comments, source 'roote'
end
