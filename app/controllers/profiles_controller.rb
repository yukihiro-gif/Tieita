class ProfilesController < ApplicationController
  def new
    @user = User.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params_user)
      bypass_sign_in(@user)
      redirect_to profile_path(@user), notice: "プロフィールの更新に成功しました。"
    else
      redirect_to edit_profile_path, alert: "[プロフィール名]を必ず記入してください。"
    end
  end

  def edit
    @user = User.find(params[:id])
    @articles = @user.articles
  end

  private

  def params_user
    params.require(:user).permit(:profile_image, :profile_name, :introduction, :tel, :email, :password, :age, :job, :from, :hobby, :like, :dislike)
  end
end
