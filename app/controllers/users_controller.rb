class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def destroy
  end

  def search
  end

  def show
  end
end
