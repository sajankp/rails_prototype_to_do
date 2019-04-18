//= require rails-ujs

$(document).on("turbolinks:load", function(){
  console.log("make all forms non editable and reset new form");
  document.getElementById("new_form").reset();
  make_non_editable_all();
})

function make_non_editable_all(){
  $(".todos input[name='todo[content]']").prop("readonly",true);
}

function make_editable(x){
  var a = "#edit_form_"+ x +" input#todo_content";
  console.log("make form with the id "+x+" editable")
  $(a).prop("readonly",false);
}

function submit_this_entry(x){
  a = '#edit_form_'+x;
  elem = $(a)[0];
  console.log("check box clicked for form with id: "+x);
  Rails.fire(elem, 'submit');
}
