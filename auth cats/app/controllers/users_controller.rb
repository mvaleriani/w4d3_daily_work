class UsersController < ApplicationController

  def index
      @users = User.all
      render :index
  end

  def new
      @user = User.new
      render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      flash[:success] = "Successfully created your account!"
      redirect_to_user_url(@user)
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_url(@user)
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end

private

def user_params
  params.require(:user).permit(:username, :password)
end
end
