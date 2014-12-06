class UsersController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
    @users = User.search(params[:search]).order(sort_column + ' ' + sort_direction)
  end

  def destroy
    @user = User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def list_users
    @search_by_options = ["age", "location", "department", "designation"]
    @users = User.all.group_by { |user| user.public_send(params[:search_by]) }
  end

  private

  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
end
