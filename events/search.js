$(document).ready(function(){
    var search = $("#search-bt");
    var options = $("option").clone();
    search.keydown(function(){
        var value = search.val().toLowerCase();
        var select = $(".firms");
        select.empty();
        for(var x = 0;x < options.length;x++){
            var text = $(options[x]).text().toLowerCase();
            if(text.substring(0,value.length) == value){
                select.append(options[x]);
            }
        }
    });

    $("#add-btn").click(function(e){
        e.preventDefault();  
        var select = $(".firms");
        var opt = $('.firms option[value="'+select.val()+'"]').clone();
        $('.firms option[value="'+select.val()+'"]').remove();
        var event = $(".firms-in-event");
        event.append(opt);
    });

    $("#remove-btn").click(function(e){
        e.preventDefault();  
        var select = $(".firms-in-event");
        console.log(select.val());
        var opt = $('.firms-in-event option[value="'+select.val()+'"]').clone();
        $('.firms-in-event option[value="'+select.val()+'"]').remove();
        var event = $(".firms");
        event.append(opt);
    });

    $("#submit").click(function(e){
        var options = $(".firms-in-event option");
        var array = [];
        for(const opt of options){
            array.push($(opt).val());
        }
        $(".hid-input").val(JSON.stringify({"array":array}));

        //e.preventDefault();
    });
});