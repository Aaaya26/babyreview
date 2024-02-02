class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:item_name, :category_id, :evaluation_id, :text, :image).merge(user_id: current_user.id)
  end
end
