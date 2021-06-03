class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @tests = policy_scope(Test)
    @projects = policy_scope(Project)
    @disable_sidebar = true
  end
end
