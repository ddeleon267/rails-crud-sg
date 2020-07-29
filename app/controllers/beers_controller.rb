class BeersController < ApplicationController
    before_action :set_beer, only: [:show, :destroy, :edit, :update]

    def index 
      @beers = Beer.all  
    end

    def show
    end

    def new
    end

    def create
      @beer = Beer.new(beer_params)
      if @beer.save
        redirect_to beer_path(@beer)
      else
        redirect_to beers_path
      end
    end

    def edit
    end

    def update
      if @beer.update(beer_params)
        redirect_to beer_path(@beer)
      else
        redirect_to beers_path
      end
    end

    def destroy
      if @beer
        @beer.destroy
      end
      redirect_to beers_path
    end

    private

    def set_beer
        @beer = Beer.find_by_id(params[:id])
    end

    def beer_params
      params.require(:beer).permit(:name, :style, :brand, :alcohol)
    end
end

