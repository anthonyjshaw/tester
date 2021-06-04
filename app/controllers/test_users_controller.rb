class TestUsersController < ApplicationController
  def create
    @test_user = TestUser.new
    authorize @test_user
    @test_user.user = current_user
    @test_user.test = Test.find(params[:test_id])
    if @test_user.save
      redirect_to 'tests/my_tests'
    else
      render 'tests/show'
    end
  end
end
