class UsersController < ApplicationController
  
  # before_action :set_user
  
  
  def new
    @user = User.new
  end
  
  def index
    @users = User.all
  end
  
  def show 
     @user = User.find(params[:id])
     
  end
  
  def create
    @user = User.new(user_params)    # 実装は終わっていないことに注意!
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # 保存の成功をここで扱う。
    else
      render 'new'
    end
  end
  
  
  
  # private
  
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
  
  # def set_user
  #   # @user = User.find(params[:id])
  # end
  
end
