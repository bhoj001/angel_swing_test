json.extract! content, :id, :project_id, :title, :type, :created_at, :updated_at
json.url content_url(content, format: :json)
