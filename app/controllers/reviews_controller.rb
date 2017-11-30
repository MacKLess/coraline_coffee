class ReviewsController < ApplicationController
  def index
    if params[:coffee_id]
      @coffee = Coffee.find(params[:coffee_id])
      @reviews = @coffee.reviews
    else
      @reviews = Review.all
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @coffee = Coffee.find(params[:coffee_id])
    @review = @coffee.reviews.new
  end

  def create
    @coffee = Coffee.find(params[:coffee_id])
    @review = @coffee.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review made!"
      redirect_to review_path(@review)
      # Epicodus example used this version: redirect_to review_path(@review.episode)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @coffee = @review.coffee
    if @review.update(review_params)
      flash[:notice] = "Review updated!"
      redirect_to review_path(@review)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Clearly you didn't like this review. It is now gone."
    redirect_to reviews_path
  end

private
  def review_params
    params.require(:review).permit(:coffee_id, :rating, :content)
#     params.require(:review).permit(:coffee_id, :rating, :user, :content)
  end
end
