class User < ApplicationRecord
    has_secure_password

    has_many :authored_rootes, foreign_key: 'author_id', class_name: 'Roote'
    has_many :comments
    has_many :commented_rootes, through: :comments, source: 'Roote'

    validates :username, :email, presence: true, uniqueness: true
end
