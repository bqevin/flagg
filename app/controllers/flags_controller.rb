class FlagsController < ApplicationController
  def index
    @flags = Flag.all
  end

  def new
    @flag = Flag.new
  end

  def create
    @flag = Flag.create(flag_params)
    if @flag.save
      flash[:success] = "Flag created successfully"
      redirect_to root_path
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
      params.require(:flag).permit(:title, :description, :active, :user_id, :organization_id)
    end
end
