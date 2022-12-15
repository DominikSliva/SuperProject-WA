$(document).ready(function(){


    var id = $(".form").attr('id');

    $("#delete").click(function(event){
        event.preventDefault();
        var form = $(".form").remove();
        $.ajax({
            url:"rmFirm.php?id="+ id,
            method:"GET",
            success:function(response) {
                console.log("OK");
                console.log(response);             
                location.href = "..//";
            },
            error:function(){
                alert("error");
            }
     });
    });

    var inputsNames = [];
    var inputsValues = []; 
    
    var inputs = $("input");
    console.log(inputs);

    for(var x = 0;x < inputs.length;x++){
        inputsNames.push($(inputs[x]).attr("name"));
        inputsValues.push($(inputs[x]).val());
    }

    var selectValues = [];
    var selectNames = []; 
    var selectChanged = false;
    var selects = $("select");
    for(var x = 0;x < selects.length;x++){
        selectValues.push($(selects[x]).val());
        selectNames.push($(selects[x]).attr("name"));
    }

    console.log(selects);

    var changedInputsIndex = [];

    var submit = $("#send-button");

    var bt2 = $("#bt2");

    bt2.click(function(event){
        event.preventDefault();
        location = "/";
    });

    submit.click(function(event){
        event.preventDefault();
        inputs = $("input");

        for(var x = 0;x < inputs.length;x++){
            if($(inputs[x]).val() != inputsValues[x]){
                changedInputsIndex.push(x);
            }
        }
        var json2 = '{"id":"'+id+'",';

        var selects = $("select");
        for(var x = 0;x <selects.length;x++){
            if($(selects[x]).val() != selectValues[x]){
                selectChanged = true;             
            }
        }
        if(selectChanged){
        for(var x = 0;x <selects.length;x++){
            var input = $(selects[x]);
            json2 += '"'+input.attr("name")+'":"'+input.val()+'"';
            if(x != selects.length-1){
                json2 += ",";
            }
        }
        json2 += "}";
        }


        if(changedInputsIndex.length != 0){

            
            var json = '{"id":"'+id+'",';
            for(var x = 0;x < changedInputsIndex.length;x++){
                var input = $(inputs[changedInputsIndex[x]]);
                json += '"'+input.attr("name")+'":"'+input.val()+'"';
                if(x != changedInputsIndex.length-1){
                    json += ",";
                }
            }    
            json += "}";
            console.log(json);
            $.ajax({
                url:"editFirm.php",
                method:"POST",
                data: JSON.parse(json),
                success:function(response) {
                    console.log("OK");
                    console.log(response);
                    json = "";
                    location.href = location.href + "&data=1";
                },
                error:function(){
                    alert("error");
                }
    
             });       
        }
        if(selectChanged){
            $.ajax({
                url:"editFirm.php",
                method:"POST",
                data: JSON.parse(json2),
                success:function(response) {
                    console.log("OK");
                    console.log(response);
                    json = "";
                   location.href = location.href + "&data=1";
                },
                error:function(){
                    alert("error");
                }
    
             });   
        }
    });
});