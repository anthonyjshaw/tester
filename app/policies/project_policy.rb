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
    true
  end

  def user_index?
    true
  end

  def my_projects?
    true
  end
end
