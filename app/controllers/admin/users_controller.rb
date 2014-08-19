class Admin::UsersController < Admin::ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.add_role :admin

    if @user.save
      flash[:notice] = "User was successfully created"
    else
      flash[:error] =  "User was not created"
    end
    redirect_to admin_users_path
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_users_path, :notice => "User updated."
    else
      redirect_to admin_users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to admin_users_path, :notice => "User deleted."
    else
      redirect_to admin_users_path, :notice => "Can't delete yourself."
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role_ids)
  end
end
