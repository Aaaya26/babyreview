class UsersController < ApplicationController

  def show
    def show
      query = "SELECT * FROM reviews"
      @reviews = Review.find_by_sql(query)
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if current_user.present?
      current_user.update(user_params)
      sign_in :user, @user, bypass: true
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'ユーザー情報を削除しました。'
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :child_birthday)
  end
end
