class IdeaSerializer < ActiveModel::Serializer
  has_many :votes
  has_many :users, through: :votes 
  attributes :id, :title, :topic, :problem, :solution, :audience, :full_name
end
