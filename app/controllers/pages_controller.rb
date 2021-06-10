class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home explore]

  def home
    @tests = policy_scope(Test).last(3)
    @projects = policy_scope(Project).last(3)
    @disable_sidebar = true
  end

  def explore
    @projects = policy_scope(Project)
  end
end
