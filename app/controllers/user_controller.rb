class UserController < ApplicationController
  def index
    @users=User.all
  end

  def list
    @user=User.find(params[:id])
  end
  def new
    @user = User.new
    respond_to do |format|
      format.turbo_stream { render partial: "user/form", locals: { user: @user } }
      format.html
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "success!" 
      render turbo_stream: turbo_stream.replace("register_modal_frame",partial: "user/success")

    else
      flash[:alert] = "Error!"  
      render :new
    end
  end


  def edit
    @user=User.find(params[:id])
    respond_to do |format|
      format.turbo_stream { render partial: "user/form", locals: { user: @user } }
      format.html
    end
  end

  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Success!"
      render turbo_stream: turbo_stream.replace("form_frame",partial: "user/success"
      )
    else
      flash[:alert] = "Error!"
      render :edit
    end
  end
  def confirm_delete
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
  
  def destroy
    @user=User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_path, notice: 'User was successfully deleted.' }
      format.turbo_stream do
        render turbo_stream: [
          turbo_stream.remove("user_#{@user.id}"),
          turbo_stream.update("user_count", partial: "shared/user_count", locals: { user_count: User.count })
        ]
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :birth_day, :email, :phone_number, :subject)
  end

end
