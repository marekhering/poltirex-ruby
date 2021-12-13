json.extract! order, :id, :delivery_time, :departure_place_lat, :departure_place_lon, :destination_place_lat, :destination_place_lon, :payload_weight, :created_at, :updated_at
json.url order_url(order, format: :json)
