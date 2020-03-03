json.extract! micropost, :id, :images, :title, :slug, :content, :user_id, :category_id, :created_at, :updated_at
json.url micropost_url(micropost, format: :json)
