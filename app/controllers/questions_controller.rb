class QuestionsController < ApplicationController

  def create
    @quetion = Question.create(question_params)
    redirect_to review_path
  end

  private
  def question_params
    params.requre(:question).permit(:comment).merge(user_id: current_user.id, review_id: params[:review_id])
  end
end
