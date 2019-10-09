class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email 

  has_many :rootes
  has_many :comments
end
