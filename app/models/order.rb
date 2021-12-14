class Order < ApplicationRecord
  has_one :route
  after_create :perform_route

  def perform_route
    route_performing_time = 5
    route = self.create_route(start_datetime: (self.delivery_time.to_time - route_performing_time.hours).to_datetime,
                               end_datetime: self.delivery_time)

    middle_time = route.start_datetime + ((route.end_datetime - route.start_datetime) / 2)
    middle_point_lat = self.departure_place_lat + (self.destination_place_lat - self.departure_place_lat) / 2
    middle_point_lon = self.departure_place_lon + (self.destination_place_lon - self.departure_place_lon) / 2

    self.create_stretch(route, route.start_datetime, middle_time, self.departure_place_lat, self.departure_place_lon,
                        middle_point_lat, middle_point_lon)

    self.create_stretch(route, middle_time, route.end_datetime, middle_point_lat, middle_point_lon,
                        self.destination_place_lat, self.destination_place_lon)

  end

  def create_stretch(route, start_datetime, end_datetime, start_place_lat, start_place_lon, end_place_lat, end_place_lon)
    route.stretches.create(start_datetime: start_datetime, end_datetime: end_datetime,
                           start_place_lat: start_place_lat, start_place_lon: start_place_lon,
                           end_place_lat: end_place_lat, end_place_lon: end_place_lon)
  end

end
