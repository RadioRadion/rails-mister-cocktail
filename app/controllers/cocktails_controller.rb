class CocktailsController < ApplicationController

  def home
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
  end

  def create
  end
end
