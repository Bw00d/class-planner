$(document).on("turbolinks:load", function() {

  $('#calendar').fullCalendar({
    events: '/deliveries.json',
    eventColor: '#5FC0DD',
    eventAfterRender: function (event, element, view) {
        
        if (event.number == "S-230") {
            //event.color = "#FFB347"; //Em andamento
            element.css('background-color', '#474747');
            element.css('border', '#474747');
        } else if (event.number == "S-330") {
            //event.color = "#77DD77"; //Concluído OK
            element.css('background-color', '#FD9727');
            element.css('border', '#FD9727');
        } else {
            //event.color = "#AEC6CF"; //Não iniciado
            element.css('background-color', '#AEC6CF');
            element.css('border', '#AEC6CF');
        }
    }

  });

  $('#show-calendar').click(function() {
    $('#deliveries').toggleClass('hide');
    // $('#calendar').show();

  });

});