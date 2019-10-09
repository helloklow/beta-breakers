class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :user_id, :roote_id

  belongs_to :roote
  belongs_to :user
end
