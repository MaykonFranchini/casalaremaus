require "rails_helper"

RSpec.feature "Creating Project" do
  scenario "A visitor create a new project" do
    visit "/"

    click_link "Tenho uma Proposta"

    fill_in "Qual seria o nome dessa parceria ou projeto?", with: "Testing"
    fill_in "Por favor, descreva mais sua ideia e deixe um meio de contato (telefone, e-mail, etc.).", with: "Testing to create a project with Capybara and RSpec"
    click_button "Enviar minha proposta"

    expect(page.current_path).to eq(root_path)
  end
end