class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :date)
  end
end
