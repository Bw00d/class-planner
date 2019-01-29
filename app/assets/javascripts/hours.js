$(document).on("turbolinks:load", function() {
  $('.comment-button').click(function() {
    id = $(this).data();
    alert(id);
  });
});