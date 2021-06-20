require 'test_helper'

class VolunteerTest < ActiveSupport::TestCase
  test "should not save volunteer without name, email, phone, skills, availability, experience, cpf or cnpj, marital status and date of birth" do
    correct_volunteer = Volunteer.new(name:"Teste", email: "email@test.com", phone: "(48)9935-1212", skills: "Football", availability:"domingo", experience:"Sim", cpf_or_cnpj: "069.690.179-07", cpf: "069.690.179-07", marital_status:"Casado(a)", date_of_birth: Date.today-100.years)
    volunteer_without_name = Volunteer.new(email: "email@test.com", phone: "(48)9935-1212", skills: "Football", availability:"domingo", experience:"Sim", cpf_or_cnpj: "069.690.179-07", cpf: "069.690.179-07", marital_status:"Casado(a)", date_of_birth: Date.today-100.years)
    volunteer_without_email = Volunteer.new(name:"Teste", phone: "(48)9935-1212", skills: "Football", availability:"domingo", experience:"Sim", cpf_or_cnpj: "069.690.179-07", cpf: "069.690.179-07", marital_status:"Casado(a)", date_of_birth: Date.today-100.years)
    volunteer_without_phone = Volunteer.new(name:"Teste", email: "email@test.com", skills: "Football", availability:"domingo", experience:"Sim", cpf_or_cnpj: "069.690.179-07", cpf: "069.690.179-07", marital_status:"Casado(a)", date_of_birth: Date.today-100.years)
    volunteer_without_skills = Volunteer.new(name:"Teste", email: "email@test.com", phone: "(48)9935-1212", availability:"domingo", experience:"Sim", cpf_or_cnpj: "069.690.179-07", cpf: "069.690.179-07", marital_status:"Casado(a)", date_of_birth: Date.today-100.years)
    volunteer_without_availability = Volunteer.new(name:"Teste", email: "email@test.com", phone: "(48)9935-1212", skills: "Football", experience:"Sim", cpf_or_cnpj: "069.690.179-07", cpf: "069.690.179-07", marital_status:"Casado(a)", date_of_birth: Date.today-100.years)
    volunteer_without_experience = Volunteer.new(name:"Teste", email: "email@test.com", phone: "(48)9935-1212", skills: "Football", availability:"domingo", cpf_or_cnpj: "069.690.179-07", cpf: "069.690.179-07", marital_status:"Casado(a)", date_of_birth: Date.today-100.years)
    volunteer_without_cpf_or_cnpj = Volunteer.new(name:"Teste", email: "email@test.com", phone: "(48)9935-1212", skills: "Football", availability:"domingo", experience:"Sim", cpf: "069.690.179-07", marital_status:"Casado(a)", date_of_birth: Date.today-100.years)
    volunteer_without_cpf_or_cnpj = Volunteer.new(name:"Teste", email: "email@test.com", phone: "(48)9935-1212", skills: "Football", availability:"domingo", experience:"Sim", cpf: "069.690.179-07", marital_status:"Casado(a)", date_of_birth: Date.today-100.years)
    volunteer_without_marital_status = Volunteer.new(name:"Teste", email: "email@test.com", phone: "(48)9935-1212", skills: "Football", availability:"domingo", experience:"Sim", cpf_or_cnpj: "069.690.179-07", cpf: "069.690.179-07", date_of_birth: Date.today-100.years)
    volunteer_without_date_of_birth = Volunteer.new(name:"Teste", email: "email@test.com", phone: "(48)9935-1212", skills: "Football", availability:"domingo", experience:"Sim", cpf_or_cnpj: "069.690.179-07", cpf: "069.690.179-07", marital_status:"Casado(a)")
    assert correct_volunteer.save
    assert_not volunteer_without_name.save
    assert_not volunteer_without_email.save
    assert_not volunteer_without_phone.save
    assert_not volunteer_without_skills.save
    assert_not volunteer_without_availability.save
    assert_not volunteer_without_experience.save
    assert_not volunteer_without_cpf_or_cnpj.save
    assert_not volunteer_without_marital_status.save
    assert_not volunteer_without_date_of_birth.save
  end
end
