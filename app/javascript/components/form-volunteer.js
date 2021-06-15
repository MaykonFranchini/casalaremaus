const cpfOrCnpj = () => {

  if (document.getElementById("volunteer_cpf_or_cnpj_cpf").checked) {
    document.getElementById("cnpj-box").style.display = "none"
    document.getElementById("volunteer_cnpj").value = ""
    document.getElementById("cpf-box").style.display = ""

  } else if (document.getElementById("volunteer_cpf_or_cnpj_cnpj").checked){
    document.getElementById("cpf-box").style.display = "none"
    document.getElementById("volunteer_cpf").value = ""
    document.getElementById("cnpj-box").style.display = ""
  }
};

const fMasc = (obj, masc) => {
  setTimeout(() => {
    obj.value = masc(obj.value)
  }, 1);
};
  
const mCPF = cpf => {
  cpf = cpf.replace(/\D/g,"")
  cpf = cpf.replace(/(\d{3})(\d)/,"$1.$2")
  cpf = cpf.replace(/(\d{3})(\d)/,"$1.$2")
  cpf = cpf.replace(/(\d{3})(\d{1,2})$/,"$1-$2")
  return cpf
}

const mCNPJ = cnpj => {
  cnpj = cnpj.replace(/\D/g,"")
  cnpj = cnpj.replace(/(\d{2})(\d)/,"$1.$2")
  cnpj = cnpj.replace(/(\d{3})(\d)/,"$1.$2")
  cnpj = cnpj.replace(/(\d{3})(\d)/,"$1/$2")
  cnpj = cnpj.replace(/(\d{4})(\d{1,2})$/,"$1-$2")
  return cnpj
}

const mPhone = phone => {
  phone = phone.replace(/\D/g,"")
  phone = phone.replace(/(\d{2})(\d)/,"($1)$2")
  phone = phone.replace(/(\d{4})(\d{4})$/,"$1-$2")

  return phone
}

export { cpfOrCnpj };
export { fMasc };
export { mCPF };
export { mCNPJ };
export { mPhone };