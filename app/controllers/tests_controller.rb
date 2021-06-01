class TestsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_test, only: :show

  def index
    @tests = policy_scope(Test.where(project: params[:project_id]))
  end

  def show
   @test.is_finished = true if @test.time_limit < Date.today
  end

  private

  def set_test
    @test = Test.find(params[:id])
    authorize @test
  end
end
