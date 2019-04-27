class User < ApplicationRecord
  has_many :votes
  has_many :ideas, through: :votes 
end
