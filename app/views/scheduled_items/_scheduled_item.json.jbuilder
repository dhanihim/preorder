json.extract! scheduled_item, :id, :current_cost, :current_price, :description, :created_at, :updated_at
json.url scheduled_item_url(scheduled_item, format: :json)
