class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :full_name, :role_title, :photo_url, :team_id
end
