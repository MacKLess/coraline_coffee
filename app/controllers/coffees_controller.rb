class CoffeesController < ApplicationController
  def index
    @coffees = Coffee.alphabetical
  end

  def show
    @coffee = Coffee.find(params[:id])
  end

  def new
    @coffee = Coffee.new
    render :new
  end

  def create
    @coffee = Coffee.new(coffee_params)
    if @coffee.save
      flash[:notice] = "Coffee created!"
      redirect_to coffees_path
    else
      render :new
  end

  def edit
    @coffee = Coffee.find(params[:id])
    render :edit
  end

  def update
    @coffee = Coffee.find(params[:id])
    if @coffee.update(coffee_params)
      flash[:notice] = "This Coffee updated!"
      redirect_to coffees_path(@coffee)
    else
      render :edit
    end
  end

  def destroy
    @coffee = Coffee.find(params[:id])
    @coffee.destroy
    flash[:notice] = "This coffee is no longer offered!"
    redirect_to coffees_path
  end
end

private
  def coffee_params
    params.require(:coffee).permit(:blend_name, :origin, :cost, :variety, :notes)
  end
end
