class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_review, only: [:show, :edit, :update]
  
  def index
    @reviews = Review.order(created_at: :DESC)
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
    @question = Question.new
    @questions = @review.questions.includes(:user)
  end

  def edit
    unless current_user == @review.user
      redirect_to root_path
    end
  end

  def update
    if @review.update(review_params)
      redirect_to review_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    review = Review.find(params[:id])
    if current_user == review.user
      review.destroy
    end
    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:item_name, :category_id, :evaluation_id, :text, :image).merge(user_id: current_user.id)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
