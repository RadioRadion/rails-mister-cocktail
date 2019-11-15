class DosesController < ApplicationController
    # before_action :find_dose, only: [:new]

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(set_dose)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.save

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail

    @dose.destroy

    redirect_to cocktail_path(@cocktail)
  end

  private

  # def find_dose
  #   @dose = Dose.find(params[:id])
  # end

  def set_dose
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
