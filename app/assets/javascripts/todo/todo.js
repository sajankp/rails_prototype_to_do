//= require rails-ujs

$(document).on("turbolinks:load", function(){
  console.log("non editable run 1");
  make_non_editable_all();
})

function make_non_editable_all(){
  $(".todos input[name='todo[content]']").prop("readonly",true);
}

function make_editable(x){
  var a = ".custom_class_"+ x +" input#todo_content";
  console.log(a)
  $(a).prop("readonly",false);
}

function submit_this_entry(x){
  a = '.custom_class_'+x;
  elem = $(a)[0];
  console.log(elem);
  Rails.fire(elem, 'submit');
}
//var elem = document.getElementsByClassName("custom_class_107")[0]
//console.log("testing the submit");
//var elem =  $('#edit_form')[0];
//Rails.fire(elem, 'submit');
