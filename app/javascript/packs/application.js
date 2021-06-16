// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initSweetalert } from '../plugins/init_sweetalert';
import { cpfOrCnpj } from '../components/form-volunteer';
import { fMasc } from '../components/form-volunteer';
import { mCPF } from '../components/form-volunteer';
import { mCNPJ } from '../components/form-volunteer';
import { mPhone } from '../components/form-volunteer';
// CSS
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';

import { changeTabs } from '../components/tabs';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initMapbox();
  initSweetalert('#sweet-alert-demo', {
    title: "Pedido de doação enviado!",
    text: "Estaremos aguardando a doação em nosso endereço, obrigada!",
    icon: "success"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#submit-link');
      link.click();
    }
  });

  let cpfCnpj = document.getElementById("volunteer_cpf_or_cnpj_cnpj")
  if (cpfCnpj) {
    cpfCnpj.addEventListener('click', cpfOrCnpj);
    document.getElementById("volunteer_cpf_or_cnpj_cpf").addEventListener('click', cpfOrCnpj);
    document.getElementById('volunteer_cpf').addEventListener('keydown', () => {
    fMasc(document.getElementById('volunteer_cpf'), mCPF);
    });
    document.getElementById('volunteer_cnpj').addEventListener('keydown', () => {
    fMasc(document.getElementById('volunteer_cnpj'), mCNPJ);
    });
    document.getElementById('volunteer_phone').addEventListener('keydown', () => {
    fMasc(document.getElementById('volunteer_phone'), mPhone);
    });
  }

  changeTabs();
})

