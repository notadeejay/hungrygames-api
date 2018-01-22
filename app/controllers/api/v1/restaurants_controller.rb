module Api::V1
  class RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
      render json: @restaurants
    end

    def create
      @restaurant = Restaurant.create(resto_params)
      render json: @restaurant
    end
    
    private
    
      def resto_params
        params.require(:restaurant).permit(:name, :description, :website, :address, :price, :cuisine)
      end
  end
end

