json.extract! post, :id, :category_id, :title, :content, :source, :created_at, :updated_at
json.url post_url(post, format: :json)