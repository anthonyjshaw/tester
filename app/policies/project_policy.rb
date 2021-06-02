class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end
  
  def create?
    true
  end

  def edit?
    record.user == user
  end

  def update?
    record.project.user == user
  end

  def my_projects?
    true
  end

end
