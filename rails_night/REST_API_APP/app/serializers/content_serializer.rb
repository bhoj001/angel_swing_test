class ContentSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :title, :type, :created_at, :updated_at

  def type
    "#{object.content_type}"
  end

end
