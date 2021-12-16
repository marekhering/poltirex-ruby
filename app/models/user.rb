class User < ApplicationRecord
  has_many :orders
  has_one :truck
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def client?
    type == 'Client'
  end

  def driver?
    type == 'Driver'
  end

end
