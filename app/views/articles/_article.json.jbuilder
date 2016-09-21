json.extract! article, :id, :owner_name, :name, :price, :description, :user_id, :created_at, :updated_at
json.url article_url(article, format: :json)