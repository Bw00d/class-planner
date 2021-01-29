$(document).on("turbolinks:load", function() {

  $('#calendar').fullCalendar({
    events: '/deliveries.json',
    eventColor: '#5FC0DD',
    allDay: true,
    eventAfterRender: function (event, element, view) {
        if (event.number == "S-230") {
            //event.color = "#FFB347"; //Em andamento
            element.css('background-color', '#474747');
            element.css('border', '#474747');
          } else if (event.number == "ICS-400") {
            //event.color = "#77DD77"; //Concluído OK
            element.css('background-color', '#d9e1f1');
            element.css('border', '#d9e1f1');
          } else if (event.number == "ICS-300") {
            //event.color = "#77DD77"; //Concluído OK
            element.css('background-color', '#a9ce90');
            element.css('border', '#a9ce90');
          } else if (event.number == "S-270") {
            //event.color = "#77DD77"; //Concluído OK
            element.css('background-color', '#f5ded1');
            element.css('border', '#f5ded1');
          } else if (event.number == "S-131") {
            //event.color = "#77DD77"; //Concluído OK
            element.css('background-color', '#d7dfef');
            element.css('border', '#d7dfef');
          } else if (event.number == "S-200") {
            //event.color = "#77DD77"; //Concluído OK
            element.css('background-color', '#fee59d');
            element.css('border', '#fee59d');
            } else if (event.number == "S-330") {
            //event.color = "#77DD77"; //Concluído OK
            element.css('background-color', '#FD9727');
            element.css('border', '#FD9727');
          } else if (event.number == "S-130") {
            //event.color = "#77DD77"; //Concluído OK
            element.css('background-color', '#8faad9');
            element.css('border', '#8faad9');
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

});