class SessionsController < ApplicationController

  def create
    user = User.find_by_credentials(
    params[:user][:user_email],
    params[:user][:password]
    )

    if user.nil?
      render json: "Credentials were wrong"
    else
      render json: "Welcome back#{user.user_email}"
    end
  end

  def new
  end
end