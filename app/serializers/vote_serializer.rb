class VoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :idea_id
end
