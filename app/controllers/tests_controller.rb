class TestsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_test, only: %i[show edit update]

  def index
    @tests = policy_scope(Test.where(project: params[:project_id]))
  end

  def show
    @test.is_finished = true if @test.time_limit < Date.today
    if is_finished?(@test)
      @test_status = 'Ended'
    else
      @test_status = 'live'
    end
  end

  def edit; end

  def update
    if @test.update
      redirect_to test_path(@test)
    else
      render :edit
    end
  end

  private

  def set_test
    @test = Test.find(params[:id])
    authorize @test
  end

  def is_finished?(test)
    test.is_finished == true
  end
end
