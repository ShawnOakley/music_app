class UsersController < ApplicationController

  before_filter :require_current_user!, :except => [:create, :new]
  def create
    @user = User.new(params[:user])

    if @user.save
      render json: @user
    else
      render json: @user.errors.full_messages
    end
  end

  def new
  end
end