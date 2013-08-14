class HomeController < ApplicationController
def index
    @home = Home.new
    @json = Home.all.to_gmaps4rails
  end
  
end
