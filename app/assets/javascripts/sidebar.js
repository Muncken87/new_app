$( document ).ready(function() {
  var body = $('body');
  var navbar = $('.navbar');
  $('.hamburger').bind('click', function(){
    body.toggleClass('menu-open');
    navbar.toggleClass('navbar-open');
    return false;
  });
});
