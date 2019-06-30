require 'test_helper'

class UserprojectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userproject = userprojects(:one)
  end

  test "should get index" do
    get userprojects_url
    assert_response :success
  end

  test "should get new" do
    get new_userproject_url
    assert_response :success
  end

  test "should create userproject" do
    assert_difference('Userproject.count') do
      post userprojects_url, params: { userproject: { description: @userproject.description, title: @userproject.title } }
    end

    assert_redirected_to userproject_url(Userproject.last)
  end

  test "should show userproject" do
    get userproject_url(@userproject)
    assert_response :success
  end

  test "should get edit" do
    get edit_userproject_url(@userproject)
    assert_response :success
  end

  test "should update userproject" do
    patch userproject_url(@userproject), params: { userproject: { description: @userproject.description, title: @userproject.title } }
    assert_redirected_to userproject_url(@userproject)
  end

  test "should destroy userproject" do
    assert_difference('Userproject.count', -1) do
      delete userproject_url(@userproject)
    end

    assert_redirected_to userprojects_url
  end
end
