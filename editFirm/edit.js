$(document).ready(function(){
    
    var id = $(".form").attr('id');

    var prevInputs = $(".form input").clone();
    var prevTextarea = $(".form textarea").clone();
    var prevSelect = $(".form select").clone();


    $("#send-button").click(function(e){
        e.preventDefault();
        var id = $(".form").attr('id');
        var changeCount = 0;
        changeCount += checkChange("input", prevInputs,id);
        changeCount += checkChange("textarea", prevTextarea,id);
        changeCount += checkChange("select", prevSelect,id);
        //console.log("Changes:"+ changeCount);
        if(changeCount != 0){
         // alert("ok")
        }
    }); 

    $("#delete").click(function(event){
        event.preventDefault();
        $("#complexConfirm").confirm();
        
    });
});

function checkChange(element,elementPrev,id){
    console.log(element);
    var elements = $(element);
    
    var changedElementsIndex = [];

    var json = '{"id":"'+id+'",';

    for(var x = 0;x < elements.length;x++){
        if($(elements[x]).val() != $(elementPrev[x]).val()){
            changedElementsIndex.push(x);
        }
    }

    if(changedElementsIndex.length != 0){
        for(var x = 0;x < changedElementsIndex.length;x++){
			
            var element = $(elements[changedElementsIndex[x]]);
			console.log (element);
                json += '"'+element.attr("name")+'":"'+element.val().trim()+'"';
                if(x != changedElementsIndex.length-1){
                    json += ",";
                }
        }
        json += "}";
    
        console.log(json);

        $.when($.ajax({
            url:"/editFirm/editFirm.php",
            method:"POST",
            data: JSON.parse(json),
            success:function(response) {
                console.log("OK");
                //console.log(response);  
                  
            },
            error:function(){
                alert("error64");
            }

         })).done(function(){
            updateRow(json);  
            return 1;
        });

    }else {
        return 0;
    }
    
    
}


function updateRow(json) {
d =JSON.parse(json);
console.log(d["id"]);
getFirmRow("/procedure.php",d["id"]);

}
