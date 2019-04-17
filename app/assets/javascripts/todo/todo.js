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
