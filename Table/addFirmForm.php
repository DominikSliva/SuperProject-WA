<?php 
include("../conn.php");

$conn = ConnectionSingleton::getConnection();

$subjectQuery = $conn -> query("select * from subject");
while($subRow = mysqli_fetch_assoc($subjectQuery)){
    $subjects[$subRow["id"]] = $subRow["name"];

}

?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script defer src="https://kit.fontawesome.com/54a65f4c40.js" crossorigin="anonymous"></script>
    <!-- Bootstrap-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../style.css">
    <title>Přidání nové firmy</title>
</head>

<body>
    <header class="sticky-top">
        <nav class="navbar bg-body-tertiary p-0">
            <div class="container-fluid ">
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev/svgjs" width="10%" height="10%" viewBox="0 0 1000 750"><rect width="1000" height="750" fill=transparent></rect><g transform="matrix(0.834,0,0,0.834,82.49454545454546,115.4193570850203)"><svg viewBox="0 0 396 247" data-background-color="transparent" preserveAspectRatio="xMidYMid meet" height="623" width="1000" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="tight-bounds" transform="matrix(1,0,0,1,0.2400000000000091,-0.09999999999999432)"><svg viewBox="0 0 395.52 247.2" height="247.2" width="395.52"><g><svg></svg></g><g><svg viewBox="0 0 395.52 247.2" height="247.2" width="395.52"><g transform="matrix(1,0,0,1,39.55199999999999,50.72876917736896)"><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g transform="matrix(1,0,0,1,0,0)"><svg width="316.416" viewBox="2.8600001335144043 -32.400001525878906 70.33000183105469 32.400001525878906" height="145.74246164526207" data-palette-color="#135ed7"><path d="M13.65 0L2.86 0 2.86-32.4 13.65-32.4 13.65 0ZM30.49 0L15.36 0 15.36-6.47 20.7-6.47 20.7-10.57 30.49-10.57 30.49 0ZM53.02 0L33.81-32.4 45.29-32.4 53.98-17.99 60.81-29.71 60.81-13.4 53.02 0ZM73.19 0L62.4 0 62.4-32.4 73.19-32.4 73.19 0ZM43.87 0L33.79 0 33.79-29.39 43.87-12.48 43.87 0Z" opacity="1" transform="matrix(1,0,0,1,0,0)" fill="#135ed7" class="undefined-text-0" data-fill-palette-color="primary" id="text-0"></path></svg></g></svg></g></svg></g></svg></g><g></g></svg></g></svg></g></svg></g><g><path xmlns="http://www.w3.org/2000/svg" d="M0 247.2v-247.2h395.52v247.2zM382.377 234.057v-220.914h-369.234v220.914z" fill="transparent" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal" data-fill-palette-color="tertiary"></path></g></svg></g><defs></defs></svg><rect width="395.52" height="247.2" fill="none" stroke="none" visibility="hidden"></rect></g></svg></g></svg>
                
                <a href="../table.php" class="me-4 p-2 border rounded"><i class="fas fa-reply"> Zpět</i></a>  
            </div>
          </nav>
    </header>
<main class="w-75 m-auto mt-4">
<form id="add-table-form" action="./addFirm.php" method="post">
  <div class="row w-50 m-auto">

    <div class="col-md-6 mb-4 d-flex flex-row justify-content-center">
      <label class="form-check-label me-1"  role="switch" for="active">Aktivní</label>
      <div class="form-check form-switch">
        <input class="form-check-input"  type="checkbox" name="active" onclick="checkboxHelper(this)" value="0">
      </div>
    </div>

    <div class="col-md-6 mb-4 d-flex flex-row justify-content-center">
      <label class="form-check-label me-1" for="cv">CV</label>
      <div class="form-check form-switch">
      <input class="form-check-input" type="checkbox" name="cv" onclick="checkboxHelper(this)" value="0">
    </div>
    </div>
  
  </div>
  <div class="row">
    <div class="col-md-6 mb-4">
      <div class="form-outline">
        <label class="form-label" for="">Název</label>
        <input type="text" name="name" id="" class="form-control form-control-lg" />
        
      </div>
    </div>
    <div class="col-md-6 mb-4">
      <div class="form-outline">
        <label class="form-label" for="">Zástupce</label>
        <input type="text" name="surname" id="" class="form-control form-control-lg" />
        
      </div>
    </div>
  </div>
  
  <div class="row">
    <div class="col-md-6 mb-4">
      <div class="form-outline">
        <label class="form-label" for="email">E-mail</label>
        <input type="email" name="email" id="" class="form-control form-control-lg" />
        
      </div>
    </div>
    <div class="col-md-6 mb-4">
      <div class="form-outline">
        <label class="form-label" for="">Telefon</label>
        <input type="text" name="phone" id="" class="form-control form-control-lg" />
        
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 mb-4">
      <div class="form-outline">
      <label for="subject">Předmět:</label>
      <select class="form-control form-control-lg" name="subject" id="">
          <option value="1">IT</option>
          <option value="2">ELE</option>
          <option value="3">IT,ELE</option>
      </select>
      
    </div>

    </div>
    <div class="col-md-6 mb-4">
      <label class="form-label" for="form3Example8">Zdroj</label>
      <input type="text" name="source" id="form3Example8" class="form-control form-control-lg" />
    
    </div>
  </div>

  <div class="row text-center">
    <div class="col-md-4 mb-4">
      <div class="form-outline">
        <label for="date_of_contact">Datum kontaktu:</label>
        <input type="date" name="date_of_contact" id="">

      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="form-outline">
        <label for="date_of_2_contact">Datum 2. kontaktu:</label>
        <input type="date" name="date_of_2_contact" id="">

      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="form-outline">
        <label for="date_of_meeting">Datum schůzky:</label>
        <input type="date" name="date_of_meeting">

      </div>
    </div>
  </div>

    <div class="row">
      <div class="col-md-6 mb-4">
        <div class="form-outline">
          <label for="result">Výsledek:</label>
          <input class="form-control form-control-lg" type="textarea" name="result">
        </div>
      </div>
      <div class="col-md-6 mb-4">
        <div class="form-outline">
          <label for="workshop">Workshop:</label>
          <input class="form-control form-control-lg" type="text" name="workshop">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 mb-4">
        <div class="form-outline">
          <label for="brigade">Brigáda:</label>
          <input class="form-control form-control-lg" type="text" name="brigade">
        </div>
      </div>
      <div class="col-md-6 mb-4">
        <div class="form-outline">
          <label for="practice">Praxe:</label>
          <input class="form-control form-control-lg" type="text" name="practice">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 mb-4">
        <label class="form-label" for="textAreaExample6">Poznámka:</label>
        <textarea name="note" class="form-control" id="textAreaExample6" rows="3"></textarea>
      </div>
    </div>
    <input type="submit" value="Uložit" class="w-25 mt-3 mx-auto btn btn-success mb-5">
</form>

</main>

    <script>
        const checkboxHelper = checkbox => {
            const output = checkbox.checked ? 1 : 0;
            console.log(output);
            checkbox.value = output;
        }
    </script>
    
</body>
</html>
