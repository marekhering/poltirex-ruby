class Order < ApplicationRecord
  has_one :route
  after_create :create_belong_route

  def create_belong_route
    self.create_route(start_datetime: (self.delivery_time.to_time - 5.hours).to_datetime, end_datetime: self.delivery_time)
  end
end
