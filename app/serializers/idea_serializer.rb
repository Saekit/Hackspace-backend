class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :title, :topic, :description, :problem, :solution, :audience
end
