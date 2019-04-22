class ReviewsController < ApplicationController
  before_filter :deny_access
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to product_path(params[:product_id]), notice: "Review noted!"
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
    @review.destroy
    redirect_to product_path(params[:product_id]), notice: "Review deleted!"
  end

  private
  def review_params
    params.require(:review).permit(:description, :rating)
  end
  def deny_access
    redirect_to product_path(params[:product_id]), notice: "You must be logged in to leave a review!"
  end
end
