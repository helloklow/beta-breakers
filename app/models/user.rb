class User < ApplicationRecord
    has_secure_password

    has_many :authored_rootes, foreign_key: 'author_id', class_name: 'Roote'
    has_many :comments
    has_many :commented_rootes, through: :comments, source: 'Roote'

    validates :username, :email, presence: true, uniqueness: true

    def user_rootes
        self.rootes.uniq
    end

    def self.find_or_create_by_omniauth(auth_hash)
        self.where(:email => auth_hash["info"]["email"]).first_or_create do |user|
            user.username = auth_hash["info"]["name"]
            user.password = SecureRandom.hex
        end
     end
end
