class UserController < ApplicationController
  def index
    @users=User.all
  end

  def list
    @user=User.find(params[:id])
  end
  def new
    @user=User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/dashboard'
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :birth_day, :email, :phone_number, :subject)
  end
end
