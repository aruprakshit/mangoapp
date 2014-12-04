class UsersController < ApplicationController
  def index
    @users = User.order(sort_column + ' ' + sort_direction)
  end

  def destroy
  end

  def search
  end

  def show
  end

  private

  def sort_column
    params[:sort] || 'name'
  end

  def sort_direction"
    params[:direction] || "asc"
  end
end
