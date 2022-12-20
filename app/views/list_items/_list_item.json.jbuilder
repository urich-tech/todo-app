json.extract! list_item, :id, :short_name, :description, :created_at, :updated_at
json.url list_item_url(list_item, format: :json)
