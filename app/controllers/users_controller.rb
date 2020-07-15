class UsersController < ApplicationController
  
  # before_action :set_user
  
  
  def new
    @user = User.new
  end
  
  def index
    @users = User.all
  end
  
  # def show 
     
  # end
  
  def create
    User.create(user_params)
    redirect_to root_path
  end
  
  
  
  
  # private
  
  def user_params
    params.require(:user).permit(:name, :email)
  end
  
  # def set_user
  #   # @user = User.find(params[:id])
  # end
  
end
