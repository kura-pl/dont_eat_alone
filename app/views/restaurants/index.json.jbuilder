json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :pyszne_address, :picture_address, :meal_type, :city, :street, :zip_code, :website, :category, :latitude, :longitude
  json.url restaurant_url(restaurant, format: :json)
end
