class UsersController < ApplicationController

  def show
    def show
      @reviews = current_user.reviews.sort.reverse
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

  private

  def user_params
    params.require(:user).permit(:name, :email, :child_birthday)
  end
end
