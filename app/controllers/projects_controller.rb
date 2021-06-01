class ProjectsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[index show]
    before_action :set_project, only: %i[ show edit update destroy ]

   def index
     @projects = policy_scope(Project)

     @projects = Project.all
     render 'projects/index'
   end

   def show
     @project = Project.find(params[:id])
     authorize @project
   end

   def new
     @projects = Project.new
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

     respond_to do |format|
        if @project.save
         format.html { redirect_to @project, notice: "Your Project was sucessfully created."  }
         format.json { render :show, status: :created, location: @project }
         redirect_to index_path
        else
         format.html { render :new, status: :unprocessable_entity }
         format.json { render json: @project.errors, status: :unprocessable_entity }
         render :new
          end
       end
    end

    def update
        @project = Project.find(params[:id])
        authorize @project
        respond_to do |format|
           if @project.update(project_params)
            format.html { redirect_to @project, notice: "Your Project was successfully updated." }
            format.json { render :show, status: :ok, location: @project }
            redirect_to user_path(current_user)
           else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @project.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @project.destroy
        respond_to do |format|
          format.html { redirect_to github_url, notice: "Your Project was successfully destroyed." }
          format.json { head :no_content }
        end
    end

    private

    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :description, :github_url)
    end
   

end
