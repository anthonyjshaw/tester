class TestUsersController < ApplicationController

  def index
    @test_users = policy_scope(TestUser).where(user: current_user)
  end

  def create
    @test_user = Test_User.new(test_user_params)
    @test = Test.find(params[:test_id])
    authorize @test_user
    @test_user.test = @test
    if @test_user.save
      # redirect_to project_path(@project)
    else
      render :new
    end
  end

  private

  def test_user_params
    params.require(:test).permit(:user_id)
  end
end
