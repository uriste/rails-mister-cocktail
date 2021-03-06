class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose.save
    redirect_to cocktail_path(@dose.cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  def update
    @dose = Dose.find(params[:id])
    @dose = @dose.update(params[:dose])
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
