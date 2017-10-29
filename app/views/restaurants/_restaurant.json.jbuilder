json.extract! restaurant, :id, :name, :cuisine, :address, :city, :state, :zip, :user_id, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
