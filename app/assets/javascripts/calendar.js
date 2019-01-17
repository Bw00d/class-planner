$(document).on("turbolinks:load", function() {

  $('#calendar').fullCalendar({
    events: '/deliveries.json',
    eventColor: '#5FC0DD'
  });

  $('#show-calendar').click(function() {
    $('#deliveries').toggleClass('hide');
    // $('#calendar').show();

  });

});