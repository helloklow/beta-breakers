class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :user_id, :roote_id, :created_at

  belongs_to :roote
  belongs_to :user
end
