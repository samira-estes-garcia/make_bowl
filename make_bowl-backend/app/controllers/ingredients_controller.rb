class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all 
        render json: @ingredients, status: 200
    end

    def show
        @ingredient = Ingredient.find_by(id: params[:id])
        render json: @ingredient, status: 200
    end

    private

    def ingredient_params
        params.require(:ingredients).permit(:name, :price, :category, :bowl_id)
    end

end
