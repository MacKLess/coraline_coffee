class CoffeesController < ApplicationController
  def index
    @coffees = Coffee.all
  end

  def show
    @coffee = Coffee.find(params[:id])
  end

  def new
    @coffee = Coffee.new(coffee_params)
  end

  def create
    @coffee = Coffee.new(coffee_params)
    if @coffee.save
      flash[:notice] = "Coffee created!"
      redirect_to coffees_path
    else
      render :new
  end

private
  def coffee_params
    params.require(:coffee).require(:blend_name, :origin, :cost, :variety, :notes)

  end
  end




end
