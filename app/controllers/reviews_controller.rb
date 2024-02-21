class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only: [:show, :edit, :update]
  
  def index
    @reviews = Review.order(created_at: :DESC)
  end

  def new
    @review_form = ReviewForm.new
    end

  def create
    @review_form = ReviewForm.new(review_form_params)
    if @review_form.valid?
      @review_form.save
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
    else
      review_attributes = @review.attributes
      @review_form = ReviewForm.new(review_attributes)
      @review_form.tag_name = @review.tags.first&.tag_name
    end
  end

  def update
    @review_form = ReviewForm.new(review_form_params)
    @review_form.image ||= @review.image.blob

      if @review_form.valid? 
        @review_form.update(review_form_params, @review)
        redirect_to review_path
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    review = Review.find(params[:id])
    if current_user == review.user
      unless review.tags == nil
        review.tags.destroy_all
      end
      review.destroy
    end
    redirect_to root_path
  end

  def search
    return nil if params[:keyword] == ""
    tag = Tag.where(['tag_name LIKE ?', "%#{params[:keyword]}%"] )
    render json:{ keyword: tag }
  end

  private

  def review_form_params
    params.require(:review_form).permit(:item_name, :category_id, :evaluation_id, :text, :tag_name, :image).merge(user_id: current_user.id)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
