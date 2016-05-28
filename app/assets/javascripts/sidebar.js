$( document ).ready(function() {
  var body = $('body');
  $('.hamburger').bind('click', function(){
    body.toggleClass('menu-open');
    return false;
  });
});
