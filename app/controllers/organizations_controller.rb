class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
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
