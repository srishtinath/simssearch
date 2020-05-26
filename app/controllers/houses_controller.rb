class HousesController < ApplicationController
    
    def index
        @houses = House.search(params[:search])
    end

    def show
        @house = House.find(params[:id])
    end

    private

    def house_params
        params.require(:house).permit(:search)        
    end
    
end
