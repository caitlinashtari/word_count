$(document).ready(function() {
  $("button#more_matches").click(function(event){
    event.preventDefault();
    $("form#first_form").hide();
    $("div.initially_hidden").show();
  });
});
