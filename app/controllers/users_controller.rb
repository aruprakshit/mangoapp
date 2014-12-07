class UsersController < ApplicationController
  helper_method :sort_column, :sort_direction
  respond_to :html, :json
  
  def index
    @users = User.search(params[:search]).order(sort_column + ' ' + sort_direction)
  end

  def destroy
    @user = User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def list_users
    @search_by_options = ['location', 'age', 'department', 'designation']
    search_column = @search_by_options.include?(params[:search_by]) ? params[:search_by] : :location
    @grouped_user_names = User.group_users_by search_column
  end

  private

  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
end
