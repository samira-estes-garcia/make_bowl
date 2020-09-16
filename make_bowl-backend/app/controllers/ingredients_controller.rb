class IngredientsController < ApplicationController

    def index
        ingredients = Ingredient.all 
        render json: ingredients
    end

    def show
        ingredient = Ingredient.find_by(id: params[:id])
        render json: ingredient
    end

    private

    def ingredient_params
        params.require(:ingredients).permit(:name, :price, :category, :bowl_id)
    end

end
