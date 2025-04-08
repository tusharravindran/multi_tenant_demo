class ProjectsController < ApplicationController
  def index
    # binding.pry
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end
end
