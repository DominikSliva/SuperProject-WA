$(document).ready(function(event){
        var tr = $(".click");
        tr.click(function(event){
            location = "/events/EditEventForm.php?id="+ event.target.parentElement.id;
        });
    
    });