// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on("turbolinks:load", function() {

  $('.datepicker').datepicker();
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();

  $('#unit-instructor-submit').click(function(){
    $('#add-unit-instructor-button').show();
    $('#unit-instructor-form').hide();
  });

  $('#add-unit-instructor-button').click(function(){
    $('#add-unit-instructor-button').hide();
    $('#unit-instructor-form').show();
  });

  $('li.unit-instructor-name').click(function(){
    $(this).find('.destroy-instructor').toggle();
  });

  $('#add-cost-button').click(function(){
    $('#add-cost-button').hide();
    $('#cost-form').show();
  });
});
