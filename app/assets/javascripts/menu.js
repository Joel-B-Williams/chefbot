document.addEventListener("DOMContentLoaded",function(){
  openMenu();
});

function openMenu() {
  var menuBtn = document.getElementsByClassName('menu-btn')[0];
  var menu = document.getElementsByClassName('menu')[0];
  
  menuBtn.addEventListener("click", function() {
    menu.classList.toggle("hidden");
  });
};