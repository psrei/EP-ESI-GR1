class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # log the user in
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Cadastrado com sucesso!"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :type)
  end
end