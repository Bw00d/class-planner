$(document).on("turbolinks:load", function() {
    $('#calendar').fullCalendar({
    events: '/deliveries.json'
});

});