class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  	debugger
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user # same as user_url(@user)
  	else
  		render 'new'
  	end
  end

  def index
  end

  private

# this only works in newer versions of ruby -- but is the safe way to go in the future
# search mass assignment (section 7.3.2 in rails tut)
#  	def user_params
#  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
#  	end

end
