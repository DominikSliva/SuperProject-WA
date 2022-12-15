$(document).ready(function(event){
   
    var main = $("#main-select");
    main.click(function(event){
        var state = main.prop("checked");
        console.log(state);
        var chechboxs = $(".check");
        for(const box of chechboxs){
            $(box).prop("checked", state);
            if(state != false){
                $(box).parent().parent().addClass("selected");
            }else {
                $(box).parent().parent().removeClass("selected");
            }
        }
    })

    var click = $(".check");
    click.click(function(event){
        var state2 = $(event.target).prop("checked");
        if(state2 != false){
            $(event.target).parent().parent().addClass("selected");
        }else {
            $(event.target).parent().parent().removeClass("selected");
        }
        
    })

});