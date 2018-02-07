class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	#debugger
  end

  def register
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Thank you for joining CoinLens."
  		redirect_to @user
  		# successful
  	else
  		render 'register'
  	end
  end

  #initializing entire parameters hash is unsafe
  #use strong parameters instead
  private
  	def user_params
  		params.require(:user).permit(:name, :email, 
  			:password, :password_confirmation)
  	end
end
