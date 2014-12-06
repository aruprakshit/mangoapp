class UsersController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
    @users = User.search(params[:search]).order(sort_column + ' ' + sort_direction)
  end

  def destroy
  end

  def search
  end

  private

  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "name"  
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"  
  end
end
