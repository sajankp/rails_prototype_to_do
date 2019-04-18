//= require rails-ujs

$(document).on("turbolinks:load", function(){
  console.log("non editable run 1");
  document.getElementById("new_form").reset();
  make_non_editable_all();
})

function make_non_editable_all(){
  $(".todos input[name='todo[content]']").prop("readonly",true);
}

function make_editable(x){
  var a = "#edit_form_"+ x +" input#todo_content";
  console.log(x)
  $(a).prop("readonly",false);
}

function submit_this_entry(x){
  a = '#edit_form_'+x;
  elem = $(a)[0];
  console.log(x);
  Rails.fire(elem, 'submit');
}
