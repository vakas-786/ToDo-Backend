class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :tasks
  has_many :categories
end
