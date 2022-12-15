function layout(a) {
	 $("#basic_wrapper").css("width",$( window ).innerWidth()*a);
     $("#basic_wrapper").css("max-width",$( window ).innerWidth()*a);
        
	
}


function showFirmEdit() {

getFirm(url,event.target.parentElement.id);
       
		layout(0.60);
		$(".overlay").show();
}

function hideFirmEdit() {

        layout(1);
		$(".overlay").hide();
        
}



$(document).ready(function(event){
	$(".overlay").hide();
	layout(1);
    var tr = $(".click");
    tr.click(function(event){
        //location = "/editFirm/editFirmForm.php?id="+ event.target.parentElement.id;
        console.log(event.target.parentElement.id);
        $(".form").attr("id",event.target.parentElement.id);
        showFirmEdit();
            
    });

     var eb =$("#edit-btn");
        eb.click(function(){
        var id = $(".check:checked").attr("id");
        $(".form").attr("id",id);
        console.log(id);
        
        if (id!=undefined) {
        
        getFirm(url,id);  
        
            showFirmEdit()
       
        }
        
    });

     $(".overlay button").click(function(event){
     hideFirmEdit();
     });
     
     

});