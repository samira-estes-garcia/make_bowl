class BowlsController < ApplicationController
    def new
        @bowl = Bowl.new(bowl_params)
    end

    def show 
        @bowl = Bowl.find_by(id: params[:id])
        render json: @bowl, status: 200
    end

    def create
        @bowl = Bowl.new(bowl_params)
        if @bowl
            @bowl.save
            render json: @bowl
        else 
            render json: {error: "Error"}
        end
    end

    def edit
        @bowl = Bowl.find_by(id: params[:id])
    end

    private
    def bowl_params
        params.require(:bowl).permit(:quantity, :total_price, :ingredient)
    end
end
