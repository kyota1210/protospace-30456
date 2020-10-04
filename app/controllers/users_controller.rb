class UsersController < ApplicationController
  
  def edit
  end

  def update
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile, :occupation, :position)
  end
end
