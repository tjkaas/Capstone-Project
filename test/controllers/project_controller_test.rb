require 'test_helper'

class ProjectControllerTest < ActionDispatch::IntegrationTest
 
  def setup
    @projects = projects(:work)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Project.count' do
      post projects_path, params: { project: { content: "Project 1" } }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Micropost.count' do
      delete project_path(@project)
    end
    assert_redirected_to login_url
  end
end