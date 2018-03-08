class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    username = params[:user][:username]
    password = params[:user][:password]

    user = User.find_by_credentials(username, password)
    if user
      flash[:success] = "Successfully logged in woo hoo"
      redirect_to cats_url
    else
      flash.now[:errors] = ["Bad auth credentials"]
      render :new
    end
  end

  def destroy
    current_user.reset_session_token!
    session[:session_token] = nil
    flash[:success] = "Successfully logged out!"
    redirect_to new_session_url
  end
end
