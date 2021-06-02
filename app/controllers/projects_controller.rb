class ProjectsController < ApplicationController

  skip_after_action :verify_authorized, only: [:user_index]

  def show
    @project = Project.find(params[:user_id])
    authorize @project
  end

  def user_index
    @projects = policy_scope(Project).where(user: current_user)
  end

end
