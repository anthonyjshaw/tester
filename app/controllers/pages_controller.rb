class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :explore]

  def home
    @tests = policy_scope(Test)
    @disable_sidebar = true
  end

  def explore
    @projects = policy_scope(Project)
  end
end
