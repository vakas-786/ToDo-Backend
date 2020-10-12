class TaskSerializer < ActiveModel::Serializer
  attributes :id, :text, :category

  belongs_to :user
end
