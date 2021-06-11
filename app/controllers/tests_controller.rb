class TestsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_test, only: %i[show edit update destroy]

  def index
    @tests = policy_scope(Test.where(project: params[:project_id]))
  end

  def show
    @test.is_finished = true if (@test.time_limit - Date.today) <= 0

    @test_url = if @test.test_url.include?("https://")
                   @test.test_url
                else
                  "https://#{@test.test_url}"
                end

    if finished?(@test)
      @test_status = 'Ended'
    else
      @test_status = 'Live'
    end
    @new_test = Test.new
    test_reviews
    review_or_reviews
  end

  def new
    @test = Test.new
    authorize @test
  end

  def create
    @test = Test.new(test_params)
    @project = Project.find(params[:project_id])
    authorize @test
    @test.project = @project
    if @test.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @test.update(test_params)
      redirect_to test_path(@test)
    else
      render 'tests/show'
    end
  end

  def destroy
    @project = @test.project
    @test.delete
    redirect_to project_path(@project)
  end

  private

  def set_test
    @test = Test.find(params[:id])
    authorize @test
  end

  def test_reviews
    @reviews = policy_scope(Review.where(test: params[:id]))
    @review = Review.new
  end

  def test_params
    params.require(:test).permit(:name, :description, :sample_size, :test_url, :time_limit)
  end

  def review_or_reviews
    @review_count = @test.reviews.count
    if @review_count == 1
      @count == 'review'
    else
      @count == 'reviews'
    end
  end

  def test_finished?(test)
    test.is_finished = true if (test.time_limit - Date.today) <= 0
  end

  def finished?(test)
    test.is_finished == true
  end
end
