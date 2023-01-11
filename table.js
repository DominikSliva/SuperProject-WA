$(document).ready( function () {

    var cookies = document.cookie.split(";");
    var cookie = "";
    for(const c of cookies){
        if(c.includes("search=")){
            cookie = c.split("=")[1];
            break;
        }
    }

    
    
    $('#basic').DataTable({
        dom: 'lBftrip',
    buttons: [
        'colvis',
        'excel',
        'print'
    ],
        scrollX: "auto",
        lengthMenu: [
            [-1, 10],
            ['All', 10],
        ],
        scrollY: '700px',
        scrollCollapse: true,
        search:{
            search: cookie
        },
        columnDefs:[ {
            targets: 0,
            orderable: false
            } ],
        language: {
            search: "",
            searchPlaceholder: "Vyhledávání"
        },
        initComplete: function( settings, json ) {
      $('.dataTables_scrollBody').height($( window ).innerHeight()-180); 
      
}
    } );
  
 //   console.log($( window ).height()-100);
        $(".dataTables_length").append($('<div class="table-filter"> <label>Aktivní:<input type="checkbox" id="check-active" checked></label><button id="edit-btn" class="bn49">Upravit vybrané</button><button class="bn49" id="delete-btn">Vymazat vybrané</button><button class="bn49" id="export-btn">Exportovat vybrané</button> | <a class="bn49" href="/firms/insertFirmForm.php">Přidání Firmy</a><a class="bn49 " href="/columns/columnForm.php">Úpravy sloupců</a><a class="bn49 " href="/events/tableEvents.php">Události</a></div>'));


    $('#basic').DataTable().on( 'search.dt', function () {
        var serachInput = $("#basic_filter label input");
        var value = serachInput.val();
        if(value == ""){
            Setcookie("");
        }else {
            Setcookie(value);
        if (window.history.replaceState) {
            window.history.replaceState("", "CRM", window.location.origin+ "?search="+ value);
         }
        }
    } );

    var checkActive = $("#check-active");
    checkActive.on('change',function(){
    if(checkActive.prop("checked") == true){
        $('#basic').DataTable().column(4).search("1",true, false, true).draw();
    }else {
        $('#basic').DataTable().column(4).search("0",true, false, true).draw();
    }
        
    });

    $("#delete-btn").click(function(){
    //var selected = $(".selected");
    var selected = $(".check:checked");
    if(selected.length > 0){
        $.confirm({
            title: 'Opravdu chcete smazat tyto firmy ?',
            content: 'Smazat '+ selected.length+ ' firem?',
            buttons: {
                yes: {
                    text: 'Ano',
                    btnClass: 'btn-blue',
                    keys: ['enter', 'shift'],
                    action: function(){
                        var array = [];
                        for (const tr of selected) {
                            array.push($(tr).attr('id'));
                        }
                        console.log(array);
                        $.ajax({
                            url:"/firms/deleteFirms.php",
                            method:"POST",
                            data: {"ids":array},
                            success:function(response) {
                                console.log(response);
                                location.reload();
                            },
                            error:function(){
                                alert("error");
                            }
                
                         }); 
                                        }
                },
                no: {
                    text: 'Ne',
                    btnClass: 'btn-gray',
                    keys: ['enter', 'shift'],
                    action: function(){
                       
                    }
                }             
            }
        });
    }
    });

    $("#export-btn").click(function(){
        var selected = $(".selected");
        if(selected.length > 0){
            var array = [];
                        for (const tr of selected) {
                            array.push($(tr).attr('id'));
                        }
                        console.log(array);
                        var form = document.createElement("form");
                        form.method = "POST";
                        form.action = "/firms/exportFirms.php";

                        var data = document.createElement("input");

                        var json = {"ids": array};
                        data.value = JSON.stringify(json);
                        data.name = "ids";
                        data.type = 'hidden';

                        form.appendChild(data);

                        document.body.appendChild(form);

                        form.submit();
        }
    })


    function Setcookie(value){
        const d = new Date();
        d.setTime(d.getTime() + (0.5*24*60*60*1000));
        let expires = "expires="+ d.toUTCString();
        document.cookie = "search="+ value+ ";"+ expires;
    }

        
} );
	
$( window ).resize(function() {
  $('.dataTables_scrollBody').height($( window ).innerHeight()-180); 
});

  