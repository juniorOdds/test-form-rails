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
      flash[:notice] = "User was successfully created." 

      render turbo_stream: turbo_stream.replace("form_frame",partial: "user/success"
      )

    else
      flash[:alert] = "There was a problem creating the user."  
      render :new
    end
  end


  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      render turbo_stream: turbo_stream.replace("form_frame",partial: "user/success"
      )
      flash[:notice] = "User was successfully updated."
    else
      render :edit
    end
  end


  def destroy
    @user=User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :birth_day, :email, :phone_number, :subject)
  end

end
