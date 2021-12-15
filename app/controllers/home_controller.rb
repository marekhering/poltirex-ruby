class HomeController < ApplicationController

  def index
    if current_user.client?
      redirect_to "/orders/new"
    else
      redirect_to "/stretches"
    end
  end
end
