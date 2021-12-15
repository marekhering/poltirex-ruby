class HomeController < ApplicationController

  def index
    if current_user.client?
      redirect_to "/orders/new"
    else
      redirect_to "/stretches"
    end
  end

  def init_app
    Stretch.delete_all
    Truck.delete_all
    Route.delete_all
    Order.delete_all
    User.delete_all

    driver1 = Driver.create(email:"mirekg@gmail.com", login:"miroslawg", name:"Miroslaw", 
                              surname:"Gorski", password:"gora", password_confirmation:"gora")
    driver2 = Driver.create(email:"krzysiekw@gmail.com", login:"krzyszw", name:"Krzysztof", 
                              surname:"Wazynski", password:"waga", password_confirmation:"waga")
    Truck.create(height:2.1, capacity:50, position_lat: 54, position_lon:18, user_id:driver1.id)
    Truck.create(height:2.3, capacity:60, position_lat: 53, position_lon:19, user_id:driver2.id)

    redirect_to "/"
  end
end
