class UsersController < ApplicationController
  def index
   @json = Home.all.to_gmaps4rails
  end
end
