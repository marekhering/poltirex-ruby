class Order < ApplicationRecord
  has_one :route
  after_create :perform_route

  def perform_route
    self.create_route(start_datetime: (self.delivery_time.to_time - 5.hours).to_datetime, end_datetime: self.delivery_time)
  end
end
