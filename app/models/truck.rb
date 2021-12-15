class Truck < ApplicationRecord
  has_many :stretches
  belongs_to :user
end
