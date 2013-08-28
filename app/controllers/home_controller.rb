class HomeController < ApplicationController
  def index
    if is_admin?
      puts "****************ADMIN***************"
    else
      puts "*****************NOT ADMIN***********"
    end
  end
end