$(document).ready(function(event){

    $("#hide-btn").click(function(e){
        e.preventDefault();
        var marked = $(".visible:checked");
        if(marked.length == 1){  
            var json ='{"name":"'+marked.val()+'","hide":"1"}';
            $.ajax({
                url:"hideColumn.php",
                method:"POST",
                data: JSON.parse(json),
                success:function(response) {
                    marked.attr("checked","false");
                    marked.removeClass("visible");
                    marked.addClass("hide");
                    $("#columns_hidden").append(marked[0]);
                },
                error:function(){
                    alert("error");
                }
    
             }); 
        }
    });

    $("#visible-btn").click(function(e){
        e.preventDefault();
        var marked = $(".hide:checked");
        if(marked.length == 1){        
            var json ='{"name":"'+marked.val()+'","hide":"0"}';
            $.ajax({
                url:"hideColumn.php",
                method:"POST",
                data: JSON.parse(json),
                success:function(response) {
                    marked.attr("checked","false");
                    marked.removeClass("hide");
                    marked.addClass("visible");
                    $("#columns_visible").append(marked[0]);
                },
                error:function(){
                    alert("error");
                }
    
             }); 
        }
    });
    

});