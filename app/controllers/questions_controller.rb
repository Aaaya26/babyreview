class QuestionsController < ApplicationController

  def create
    @quetion = Question.create(question_params)
    redirect_to review_questions_path
  end

  def destroy
    question = Question.find(params[:id])
    if current_user == question.user
      question.destroy
    end
    redirect_to review_path
  end

  private
  def question_params
    params.require(:question).permit(:comment).merge(user_id: current_user.id, review_id: params[:review_id])
  end
end
