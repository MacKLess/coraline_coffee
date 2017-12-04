class ProdcutsController < ApplicationController
  def index
    @products = Product.alphabetical
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product created!"
      redirect_to products_path
    else
      render :new
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "This Product updated!"
      redirect_to products_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "This product is no longer offered!"
    redirect_to products_path
  end
end

private
  def product_params
    params.require(:product).permit(:blend_name, :origin, :cost, :variety, :notes)
  end
end
