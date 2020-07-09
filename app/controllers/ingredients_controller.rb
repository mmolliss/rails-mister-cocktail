class IngredientsController < ApplicationController
  def index
    @ingredients = Cocktail.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingedient_params)
    # if @cocktail.save
    #   redirect_to @cocktail, notice: 'Cocktail was successfully created.'
    # else
    #   render :show[:id]
    # end
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
