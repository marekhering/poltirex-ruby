class Route < ApplicationRecord
  belongs_to :order
  has_many :stretches

  def create_route_stretches
    self.stretches.create(start_datetime: self.start_datetime, end_datetime: self.end_datetime)
    self.stretches.create(start_datetime: self.start_datetime, end_datetime: self.end_datetime)
  end
end
