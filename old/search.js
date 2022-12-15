$(document).ready(function(){
    var search = $("#search-box");

    search.keydown(function(){
        var value = search.val();

        $.ajax({
            type: "GET",
            dataType: "json",
            url: "/filterFirms.php?search="+value,
            success: function(data){
            var thead = $("#table-head").clone();
            var table = $("#basic");
            table.empty();
            table.append(thead);
            if(data["array"].length != 0){
            for(var x = 0;x < data["array"].length;x++){
                var tbody = '<tbody><tr id="'+data["array"][x]["id"]+'">';
                tbody += '<td class="name">'+data["array"][x]["name"]+'</td>';
                tbody += '<td class="surname">'+data["array"][x]["surname"]+'</td>';
                tbody += '<td class="email">'+data["array"][x]["email"]+'</td>';
                tbody += '<td class="phone">'+data["array"][x]["phone"]+'</td>';
                tbody += '<td class="subject">'+data["array"][x]["subject"]+'</td>';
                tbody += '<td class="source">'+data["array"][x]["source"]+'</td>';
                tbody += '<td class="date_of_contact">'+data["array"][x]["date_of_contact"]+'</td>';
                tbody += '<td class="date_of_meeting">'+data["array"][x]["date_of_meeting"]+'</td>';
                tbody += '<td class="date_of_meeting">'+data["array"][x]["date_of_meeting"]+'</td>';
                tbody += '<td class="result">'+data["array"][x]["result"]+'</td>';
                tbody += '<td class="brigade">'+data["array"][x]["brigade"]+'</td>';
                tbody += '<td class="workshop">'+data["array"][x]["workshop"]+'</td>';
                tbody += '<td class="practice">'+data["array"][x]["cv"]+'</td>';
                tbody += '<td class="cv">'+data["array"][x]["cv"]+'</td>';
                tbody += '<td class="note">'+data["array"][x]["note"]+'</td>';
                for(var i = 0;i < data["columns"].length;i++){
                    tbody += '<td class="'+data["columns"][i]+'">'+data["array"][x][data["columns"][i]["name"]]+'</td>';
                }
                table.append(tbody);
                }                
            }
            else {
                var tbody = '<tbody><tr>';  
                tbody += '<td class="name">Žádné výsledky</td>';  
                table.append(tbody);
            }
            var tr = $("tr");
            tr.click(function(event){
            location = "/editFirm/editFirmForm.php?id="+ jQuery(this).attr("id");
            });
            var trs = $("tr");
            for(var x = 2;x < trs.length;x+=2){
                $(trs[x]).addClass("bg");
            }
            $("#count").text("Zobrazených výsledků: "+ data["array"].length);
            
            },
             error: function(request,error) {            
                  console.log(request, error);
             }
        });
    });
});