class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :explore]

  def home
    @tests = policy_scope(Test).last(3)
    @projects = policy_scope(Project).last(3)
    @disable_sidebar = true
  end

  def explore
    if params[:query].present?
      @projects = Project.search_project_name_description(params[:query])
    else
      @projects = Project.all
    end
  end

end
