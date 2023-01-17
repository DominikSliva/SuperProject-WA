<?php
include_once("conn.php");
include_once("session.php");


?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Cache-Control" content="no-store" />
    <meta http-equiv='cache-control' content='no-cache'>
    <meta http-equiv='expires' content='0'>
    <meta http-equiv='pragma' content='no-cache'>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

    <link rel="stylesheet" href="Redesign/style.css">
    <script src="editFirm/edit.js"></script>
    <script src="ajax.js?v=<?php echo filemtime("ajax.js") ?>"></script>
    <script src="table.js?v=<?php echo filemtime("table.js") ?>"></script>
    <script src="clickRow.js?v=<?= time() ?>"></script>
    <script src="select.js"></script>

    <title>CMR</title>
</head>

<body>

    <?php
    include("navigation.php")
    ?>

    <main id="main-content">
    <script>
    function create () {
        $.ajax({
            url:"Table/tableApi.php",    //the page containing php script
            type: "post",    //request type,
            dataType: 'json',
            data: {Action: "getData"},
            success:function(result){
                console.log(result.abc);
            },
            error: function (error) {
                console.log(error);
            }
        });
    }
</script>

<button type="button" onclick="create()">Click Me</button>
    </main>



</body>

</html>