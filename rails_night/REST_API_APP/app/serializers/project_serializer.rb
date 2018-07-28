class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :thumbnail, :description, :created_at, :updated_at
end
