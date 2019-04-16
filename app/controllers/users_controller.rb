class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: " 登録しました。"
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path, notice: "更新しました。"
    else
      render :edit
    end
  end

  private

  def user_params
    params
      .require(:user)
      .permit(category_user_attributes: [:id, :category_id, :user_id, :_destroy])
  end
end