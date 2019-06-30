json.extract! userproject, :id, :title, :description, :created_at, :updated_at
json.url userproject_url(userproject, format: :json)
