require 'pry'
class UsersController < ApplicationController
  respond_to :json

  def register
    # @user = User.new
    # render component: "Register", props: {user: @user}, tag: 'div'
  end

  def create
    @user = User.create(user_params)
    @message = "Thank you for Registering."
      if @user.valid?
        render json: {message: "Thank you for Registering.", user: @user}
      else
        @errors = @user.errors.full_messages
        render :register
      end
  end

  def login

  end

  def validate
    @user = User.find_by(email: params["user"]["email"])
    if @user && @user.authenticate(params["user"]["password"])
      session[:user_id] = @user.id
      render json: {name: @user.full_name, userId: @user.id}
    else
      render json: {message: "Invalid Email or Password."}
    end
  end

  def logout
    reset_session
    @user = nil
    redirect_to :root
  end

private

  def user_params
    params.require(:user).permit(:full_name, :email, :password)
  end

end
