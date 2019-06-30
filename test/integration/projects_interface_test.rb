require 'test_helper'

class ProjectsInterfaceTest < ActionDispatch::IntegrationTest
 
 def setup
    @user = users(:michael)
 end

  test "project interface" do
    log_in_as(@user)
    get root_path
    assert_select 'div.pagination'
    # Invalid submission
    assert_no_difference 'Project.count' do
      post projects_path, params: { project: { content: "" } }
    end
    assert_select 'div#error_explanation'
    # Valid submission
    content = "This project really ties the room together"
    assert_difference 'Project.count', 1 do
      post projects_path, params: { project: { content: content } }
    end
    assert_redirected_to root_url
    follow_redirect!
    assert_match content, response.body
    # Delete post
    assert_select 'a', text: 'delete'
    first_project = @user.projects.paginate(page: 1).first
    assert_difference 'Project.count', -1 do
      delete project_path(first_project)
    end
  end
   
   test "project sidebar count" do
    log_in_as(@user)
    get root_path
    assert_match "#{@user.projects.count} projects", response.body
    # User with zero projects
    other_user = users(:archer)
    log_in_as(other_user)
    get root_path
    assert_match "0 projects", response.body
    other_user.projects.create!(content: "A micropost")
    get root_path
    assert_match "1 project", response.body
  end
end
