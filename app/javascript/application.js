//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap-sprockets
import "@hotwired/turbo-rails"
import "controllers"
import "popper"
import "bootstrap"
import * as bootstrap from "bootstrap"

document.addEventListener("turbo:load", () => {
  // ドロップダウンを初期化するコード
  var dropdownMenuList = document.querySelectorAll('.dropdown-toggle');
  dropdownMenuList.forEach(function(dropdownMenuEl) {
    new bootstrap.Dropdown(dropdownMenuEl);
  });
});
