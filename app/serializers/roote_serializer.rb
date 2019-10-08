class RooteSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :location, :difficulty, :content, :author_id

  has_many :comments
end
