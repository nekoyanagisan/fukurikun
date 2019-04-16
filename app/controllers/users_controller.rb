class UsersController < ApplicationController
  def new
    @user = Form::User.new
  end

  def edit
    @user = Form::User.find(params[:id])
  end

  def create
    @user = Form::User.new(user_params)
    if @user.save
      redirect_to users_path, notice: " 登録しました。"
    else
      render :new
    end
  end

  def update
    @user = Form::User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path, notice: "更新しました。"
    else
      render :edit
    end
  end

  private

  def user_params
    params
      .require(:form_user)
      .permit(
        Form::User::REGISTRABLE_ATTRIBUTES +
        [category_user_attributes: Form::CategoryUser::REGISTRABLE_ATTRIBUTES]
      )
  end
end
