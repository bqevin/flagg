class FlagsController < ApplicationController
  def index
    @flags = Flag.text_search(params[:query])
  end

  def new
    @flag = Flag.new
  end

  def create
    @user = current_user
    @flag = current_user.flags.create(flag_params)
    if @flag
      flash[:success] = "Flag created successfully"
      redirect_to organizations_path
    else
      flash[:danger] = "Flag was not created. Please try again"
      render :new
    end
  end

  def show
    @flag = Flag.find(params[:id])
  end

  def destroy
  end

  private
    def flag_params
      params.require(:flag).permit(:title, :description)
    end
end
