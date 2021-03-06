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
import { footerMarginAdd } from 'packs/footer_margin_add';
import { initChatroomCable } from 'channels/chatroom_channel';
import { changeTextBox } from 'packs/change_text_box';
import { testLink } from '../custom/testlink';
import { initFlatpickr } from "../plugins/flatpickr";
import { sidebarToggle } from '../custom/sidebar';
import { initEmptySearch } from '../custom/prompt';
window.sidebarToggle = sidebarToggle;
// window.sidebarOff = sidebarOff;

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  testLink();
  changeTextBox();
  const objectSelector = document.getElementById('messages');
  if (objectSelector) {
  objectSelector.scrollTo({ top: objectSelector.scrollHeight })
  }
  initChatroomCable();
  initFlatpickr();
  initEmptySearch()
});

import "controllers"
