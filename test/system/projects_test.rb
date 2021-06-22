require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit projects_path
    assert_selector "h2", text: "Nossos projetos disponíveis:"
  end

  # test "lets a visitor create a new project" do
  #   visit "/projects/new"

  #   fill_in "project_name", with: "Le Wagon"
  #   fill_in "project_description", with: "Change your life: Learn to code"

  #   click_on 'Enviar minha proposta'

  #   assert_equal root_path, page.current_path
  # end
end
