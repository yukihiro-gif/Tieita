class ProfilesController < ApplicationController

  def new
    @user = User.new()
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles
  end

  def create
  end

  def update
    user = User.find(params[:id])
    user.update(params_user)
    redirect_to ''
  end

  def edit
    @user = User.find(params[:id])
    @users = User.all
  end

private
 def params_user
   params.require(:user).permit(:profile_image, :profile_name, :introduction, :tel, :email, :password)
 end
end
