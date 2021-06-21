require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit projects_path
  
    assert_selector "h2", text: "Nossos projetos disponíveis:"
  end
end
