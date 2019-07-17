class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: {minimum: 5}

    has_many :authored_rootes, class_name: 'roote'
    has_many :comments
    has_many :commented_rootes, through: :comments, source: 'roote'
end
