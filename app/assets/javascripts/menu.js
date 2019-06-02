document.addEventListener("DOMContentLoaded",function(){
  openMenu();
});

function openMenu() {
  var menuBtn = document.getElementsByClassName('menu-btn')[0];
  var menu = document.getElementsByClassName('menu')[0];
  
  menuBtn.addEventListener("click", function() {
    console.log('clicked menu button');
    menu.classList.toggle("hidden");
  });
};