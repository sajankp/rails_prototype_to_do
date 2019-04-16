window.onload=function(){
  console.log("test");
  $(".todos input[name='todo[content]']").prop("readonly",true);}



function make_editable(x){
  var a = ".custom_class_"+ x +" input#todo_content";
  console.log(a)
  $(a).prop("readonly",false);
}
