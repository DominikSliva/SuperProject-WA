$(document).ready(function(){

    var trs = $("tr");
    for(var x = 2;x < trs.length;x+=2){
        $(trs[x]).addClass("bg");
    }
    
});