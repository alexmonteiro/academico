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
//= require jquery-ui
//= require jquery_ujs
//= require jquery.maskedinput
//= require bootstrap-datepicker
//= require twitter/bootstrap
//= require rails.validations
//= require_tree .
//= require_self
/*
* ADICAO DE JS GENERICA PARA PAIS, ESTADO, CIDADE
* */

$(function() {
	$(".datepicker_class" ).datepicker({
	        language: "br",
                format: "dd.mm.yyyy",
                "autoclose": true
	});
});

$(function() {
  $("dd").each(function() {
    if ($(this).html().length === 0) {
      $(this).css("color", "red");
      $(this).css("font-weight", "bold");
      $(this).html("Sem Registro.");
    } else {
      if ($(this).html() === 'true') {
      	$(this).html("Sim");
      } else if ($(this).html() === 'false') {
      	$(this).html("Nao");
      }
      $("ul").each(function() {
	    if ($(this).html().length === 0) {
	      $(this).remove();
	    }
	  });
	}
  });
});


jQuery(function($) {
  // when the #country field changes
  $("#country").change(function() {
    // make a POST call and replace the content
    var country = $('select#country :selected').val();
    var nome_view = $('input#nome_view').val();
    var state = 0
    if(state == "") state="0";
    if(country == "") country="0";
    jQuery.get('/countries/update_state_select/' + country,{nome_view: nome_view}, function(data){
        $("#addressStates").html(data);
    })
    
    jQuery.get('/countries/update_city_select/' + state, {nome_view:nome_view}, function(data){
        $("#addressCities").html(data);
    })
    return false;
  });
  
})

/*
* FIM
*/

 jQuery(function($) {
  // when the #country field changes
  $("#person_country_id").click(function() {
    // make a POST call and replace the content
    var country = $('select#person_country_id :selected').val();
    if(country == "") country="0";
    jQuery.get('/people/update_state_select/' + country, function(data){
        $("#addressStates").html(data);
    })
    return false;
  });
})





// Disciplinas da Turma/MatrizCurricular
jQuery(function($) {
  // when the #turma field changes
  $("#discipline_class_school_class_id").change(function() {
    // make a POST call and replace the content
    var turma = $('select#discipline_class_school_class_id :selected').val();
    if(turma == "") turma="0";
    jQuery.get('/discipline_classes/update_discipline_select/' + turma, function(data){
        $("#turmaDisciplinas").html(data);
    })
    return false;
  });
});

function limparCampo(campoId){
  document.getElementById(campoId).value = '';
}

$.datepicker.setDefaults( $.datepicker.regional["pt-BR"] );

//Inicio das Funções para campos aninhados em Person
function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}
//Fim das Funções para campos aninhados em Person
    

