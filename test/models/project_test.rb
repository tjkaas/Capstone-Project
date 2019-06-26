require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @project = @user.projects.build(content: "Project 1")
  end

  test "should be valid" do
    assert @project.valid?
  end

  test "user id should be present" do
    @project.user_id = nil
    assert_not @project.valid?
  end
  
  test "content should be present" do
    @project.content = "   "
    assert_not @project.valid?
  end

  test "content should be at most 80 characters" do
    @project.content = "a" * 81
    assert_not @project.valid?
  end
  
  test "order should be most recent first" do
    assert_equal projects(:most_recent), Project.first
  end
end