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

  private
  def review_params
    params.require(:review).permit(:description, :rating)
  end
  def deny_access
    raise 'you must be logged in to leave a review' unless @current_user
  end
end
