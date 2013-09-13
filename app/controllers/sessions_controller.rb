class SessionsController < ApplicationController

  def create
    # user = User.find_by_credentials(
    # params[:user][:user_email],
    # params[:user][:password]
    # )

    if user.nil?
      render json: "Credentials were wrong"
    else
      self.current_user = user
      redirect_to user_url(user)
    end
  end

  def destroy
    logout_current_user!
    redirect_to new_session_url
  end

  def new
  end
end