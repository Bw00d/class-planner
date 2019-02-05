$(document).on("turbolinks:load", function() {
  $('.comment-button').click(function() {
    $('.hour-comment').hide();
    id = $(this).attr("data");
    $('#' + id + "-comment").show();
  });
  $('.hour-comment').click(function() {
    $(this).hide();
  });
  $('.show-eye').click(function() {
    $('#submitted-table').toggleClass('hidden');
  });
});
