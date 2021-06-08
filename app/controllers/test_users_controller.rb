class TestUsersController < ApplicationController
  def index
    @test_users = policy_scope(TestUser).where(user: current_user)
  end

  def create
    @test_user = TestUser.new(user_id: params[:user_id], test_id: params[:test_id])
    authorize @test_user

    if @test_user.save
      redirect_to test_users_path
    else
      render :new
    end
  end

  def set_done
    @test_user = TestUser.find(params[:id])
    @test_user.test_finished = true
    authorize @test_user
    @test_user.save
    @link = @test_user.test.test_url
    redirect_to "http://#{@link}"
  end
end
