class Route < ApplicationRecord
  belongs_to :order
  has_many :stretch
end
