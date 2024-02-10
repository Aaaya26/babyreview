class UsersController < ApplicationController

  def show
    def show
      @reviews = current_user.reviews
    end
  end

  def edit
  end

  def update
    current_user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :child_birthday)
  end
end
