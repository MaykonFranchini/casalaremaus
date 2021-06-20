require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save project without name and a description with length > 10" do
    correct_project = Project.new(name: "Projeto de teste", description: "This is a description with length > 10")
    project_with_name = Project.new(name: "Projeto de teste")
    project_with_description = Project.new(description: "This is a description with length > 10")
    project_with_small_description = Project.new(description: "< 10")
    assert correct_project.save
    assert_not project_with_name.save, "Saved the project without a description"
    assert_not project_with_description.save, "Saved the project without a name"
    assert_not project_with_small_description.save, "Saved the project with description length < 10"
  end
end
