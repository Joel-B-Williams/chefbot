document.addEventListener("DOMContentLoaded",function(){
  ready();
});

document.addEventListener("turbolinks:load", function(){
  ready();
});

function ready() {
  openMenu();
};

function openMenu() {
  var menuBtn = document.getElementsByClassName('menu-btn')[0];
  var menu = document.getElementsByClassName('menu')[0];
  
  menuBtn.addEventListener("click", function() {
    menu.classList.toggle("hidden");
  });
};