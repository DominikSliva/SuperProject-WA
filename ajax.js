//$(function() {
  

function getFirm(url,id) {  
  
$.getJSON( url+"procedure.php?cmd=getFirm&id="+id, function( data ) {
  
  var html="";
  
  $.each( data, function( key, val ) {
  
    $("input[name="+key).val(val);

  });
    

});  
}
  
function getFirmRow(url,id) {  
  
$.getJSON( url+"?cmd=getFirm&id="+id, function( data ) {
  
  $.each( data, function( key, val ) {
    console.log(val);
    console.log(".rownum"+id+" td[class*="+key+"]");
    $(".rownum"+id+" td[class*="+key+"]").html(val);

  });
    

});  
}




// post-submit callback

function processJson(data) {
    console.log(data.msg);
    
    if (data.msg==-1) $("#output1").html("Error");
    else {$("#output1").html("OK"); $("form").hide();} 
}

//});//ready