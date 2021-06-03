class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @projects = policy_scope(Project)
    @tests = policy_scope(Test)
    @disable_sidebar = true
  end
end
