class TeamSerializer < ActiveModel::Serializer
  attributes :id, :team_name, :pitch_title, :pitch_topic, :pitch_problem, :pitch_solution
end
