require 'test_helper'

class JobDescriptionsControllerTest < ActionController::TestCase
  setup do
    @job_description = job_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_description" do
    assert_difference('JobDescription.count') do
      post :create, job_description: { description: @job_description.description, title: @job_description.title }
    end

    assert_redirected_to job_description_path(assigns(:job_description))
  end

  test "should show job_description" do
    get :show, id: @job_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_description
    assert_response :success
  end

  test "should update job_description" do
    put :update, id: @job_description, job_description: { description: @job_description.description, title: @job_description.title }
    assert_redirected_to job_description_path(assigns(:job_description))
  end

  test "should destroy job_description" do
    assert_difference('JobDescription.count', -1) do
      delete :destroy, id: @job_description
    end

    assert_redirected_to job_descriptions_path
  end
end
