class TaskSerializer < ActiveModel::Serializer
  attributes :id, :text, :category
end
