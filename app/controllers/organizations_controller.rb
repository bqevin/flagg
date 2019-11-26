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
    @org1 = Organization.find_by(id:2)
    @flags = @org1.flags
  end

  def destroy
  end
end
