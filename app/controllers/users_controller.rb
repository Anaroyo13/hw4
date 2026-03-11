class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new
    @user["username"] = params["username"]
    @user["email"] = params["email"]
    @user["password"] = params["password"]
      if @user.save
      redirect_to "/login"
    else
      redirect_to "/signup"
    end
  end
end
