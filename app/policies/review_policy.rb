class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(test: params[:test_id])
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def index?
    true
  end

end
