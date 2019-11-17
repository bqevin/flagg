class OrganizationsController < ApplicationController
  def index
    if params[:term]
      @flag = Flag.search(params[:term])
    else
      @organizations = Organization.all
    end
  end

  def new
  end

  def create
  end

  def show
    @org = Organization.find_by(id:params[:id])
    @flags = @org.flags
  end

  def destroy
  end
end
