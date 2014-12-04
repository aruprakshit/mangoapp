class UsersController < ApplicationController
  def index
    @users = User.order(params[:sort] + ' ' + params[:direction])
  end

  def destroy
  end

  def search
  end

  def show
  end
end
