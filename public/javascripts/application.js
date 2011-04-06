// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function(){

  $.ajaxSetup({dataType: 'html'});

  $('#product_gallery').galleria();


  var $gmap = $("div#gmaps4rails_map");
  if ($gmap.length !=0){
    var timer = setInterval(function(){
      if ($gmap.children('div').first().children('div').eq(1).length != 0){
        clearInterval(timer);
        $gmap.children('div').first().children('div').eq(1).hide();
        $gmap.children('div').first().children('div').eq(2).hide();
      }
    },500)
  }

  $('form#new_contact').live('ajax:success', function(status, data){
    $('form#new_contact').replaceWith(data);
  })
})