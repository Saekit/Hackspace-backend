class UserSerializer < ActiveModel::Serializer
  has_many :votes
  has_many :ideas, through: :votes 
  attributes :id, :username, :email, :full_name, :role_title, :photo_url, :team_id
end
