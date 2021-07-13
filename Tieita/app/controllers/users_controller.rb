class UsersController < ApplicationController

  def new
    @user = User.new()
  end

  def show
  end

  def create
    user = User.new(params_user)
    user.save
    redirect_to ""
  end

  def update
  end

  def edit
  end

private
 def params_user
   params.require(:user).permit(:profile_image, :profile_name, :introduction, :tel, :email, :passwrod)
 end
end
