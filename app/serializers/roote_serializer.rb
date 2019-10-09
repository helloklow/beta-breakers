class RooteSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :location, :difficulty, :content, :author_id, :created_at

  has_many :comments
end
