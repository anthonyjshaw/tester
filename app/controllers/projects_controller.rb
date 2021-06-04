class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_authorized, only: [:user_index]
  before_action :set_project, only: %i[show edit update destroy]

  def index
    @projects = policy_scope(Project).where(user: current_user)

    # @projects = Project.all
    # render :index
  end

  def user_index
    @projects = policy_scope(Project).where(user: current_user)
    @project = Project.new
    authorize @project
    @test = Test.new
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
    @test = Test.new
    authorize @test
    @tests = policy_scope(Test).where(project: @project)
  end

  def new
    @project = Project.new
    authorize @project
  end

  def edit
    @project = Project.find(params[:id])
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    authorize @project
    if @project.save
      redirect_to my_projects_path
    else
      render :new
    end
  end

  # def my_projects
  #   @projects = policy_scope(current_user.projects)
  #   # authorize @projects
  # end

  def update
    @project = Project.find(params[:id])
    authorize @project
      if @project.update(project_params)
        redirect_to my_projects_path
      else
        render :show
      end
  end

  def destroy
    authorize @project
    if @project.destroy
    redirect_to my_projects_path
  end
  end

  private



  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :github_url, :project_tag)
  end
end
