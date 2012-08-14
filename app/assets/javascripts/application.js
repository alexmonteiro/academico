// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

jQuery(function($) {
  // when the #country field changes
  $("#person_country_id").change(function() {
    // make a POST call and replace the content
    var country = $('select#person_country_id :selected').val();
    if(country == "") country="0";
    jQuery.get('/people/update_state_select/' + country, function(data){
        $("#addressStates").html(data);
    })
    return false;
  });
})


jQuery(function($) {
  // when the #country field changes
  $("#person_address_country").change(function() {
    // make a POST call and replace the content
    var country = $('select#person_address_country :selected').val();
    if(country == "") country="0";
    jQuery.get('/people/update_state_select/' + country, function(data){
        $("#addressStates").html(data);
    })
    return false;
  });
})





