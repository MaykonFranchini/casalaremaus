require 'test_helper'

class SolicitationTest < ActiveSupport::TestCase
  test "Should not save solicitation without volunteer, project and status false by default" do
    volunteer = Volunteer.new(name:"Teste", email: "email@test.com", phone: "(48)9935-1212", skills: "Football", availability:"domingo", experience:"Sim", cpf_or_cnpj: "069.690.179-07", cpf: "069.690.179-07", marital_status:"Casado(a)", date_of_birth: Date.today-100.years)
    project = Project.new(name: "Projeto de teste", description: "This is a description with length > 10")
    correct_solicitation = Solicitation.new(project: project, volunteer: volunteer)
    solicitation_without_project = Solicitation.new(volunteer: volunteer)
    solicitation_without_volunteer = Solicitation.new(project: project)
    assert correct_solicitation.save
    assert_equal false, correct_solicitation.status, "Solicitation default status must be false"
    assert_not solicitation_without_project.save
    assert_not solicitation_without_volunteer.save
  end
end
