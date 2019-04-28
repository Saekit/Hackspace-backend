class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :title, :topic, :problem, :solution, :audience, :full_name
end
