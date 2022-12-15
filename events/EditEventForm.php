<?php
include_once("../session.php");
?>
<html lang="en" class=""><head>

    <meta charset="UTF-8">
    <title>Přidání události</title>
  
    <meta name="robots" content="noindex">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Titillium+Web:400,700">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="search.js"></script>
  <script src="edit.js"></script>
    <style class="INLINE_PEN_STYLESHEET_ID">
      html {
    -webkit-font-smoothing: antialiased;
  }
  .bt {
      font: inherit;
    line-height: normal;
    cursor: pointer;
    background: #E8474C;
    color: white;
    font-weight: bold;
    width: auto;
    margin-left: auto;
    font-weight: bold;
    padding-left: 2em;
    padding-right: 2em;
  }
  
  body {
    background-color: #111111;
    font-family: "Titillium Web", sans-serif;
  }
  @media screen and (min-width: 40em) {
    body {
      font-size: 1.25em;
    }
  }
  
  .form .button, .form .message, .customSelect, .form .select, .form .textarea, .form .text-input, .form .option-input + label, .form .checkbox-input + label, .form .label {
    padding: 0.75em 1em;
    -webkit-appearance: none;
       -moz-appearance: none;
            appearance: none;
    outline: none;
    line-height: normal;
    border-radius: 0;
    border: none;
    background: none;
    display: block;
  }
  
  .form .label {
    font-weight: bold;
    color: white;
    padding-top: 0;
    padding-left: 0;
    letter-spacing: 0.025em;
    font-size: 1.125em;
    line-height: 1.25;
    position: relative;
    z-index: 100;
  }
  .required .form .label:after, .form .required .label:after {
    content: " *";
    color: #E8474C;
    font-weight: normal;
    font-size: 0.75em;
    vertical-align: top;
  }
  
  .customSelect, .form .select, .form .textarea, .form .text-input, .form .option-input + label, .form .checkbox-input + label {
    font: inherit;
    line-height: normal;
    width: 100%;
    box-sizing: border-box;
    background: #222222;
    color: white;
    position: relative;
  }
  .customSelect:placeholder, .form .select:placeholder, .form .textarea:placeholder, .form .text-input:placeholder, .form .option-input + label:placeholder, .form .checkbox-input + label:placeholder {
    color: white;
  }
  .customSelect:-webkit-autofill, .form .select:-webkit-autofill, .form .textarea:-webkit-autofill, .form .text-input:-webkit-autofill, .form .option-input + label:-webkit-autofill, .form .checkbox-input + label:-webkit-autofill {
    box-shadow: 0 0 0px 1000px #111111 inset;
    -webkit-text-fill-color: white;
    border-top-color: #111111;
    border-left-color: #111111;
    border-right-color: #111111;
  }
  .customSelect:not(:focus):not(:active).error, .form .select:not(:focus):not(:active).error, .form .textarea:not(:focus):not(:active).error, .form .text-input:not(:focus):not(:active).error, .form .option-input + label:not(:focus):not(:active).error, .form .checkbox-input + label:not(:focus):not(:active).error, .error .customSelect:not(:focus):not(:active), .error .form .select:not(:focus):not(:active), .form .error .select:not(:focus):not(:active), .error .form .textarea:not(:focus):not(:active), .form .error .textarea:not(:focus):not(:active), .error .form .text-input:not(:focus):not(:active), .form .error .text-input:not(:focus):not(:active), .error .form .option-input + label:not(:focus):not(:active), .form .error .option-input + label:not(:focus):not(:active), .error .form .checkbox-input + label:not(:focus):not(:active), .form .error .checkbox-input + label:not(:focus):not(:active) {
    background-size: 8px 8px;
    background-image: linear-gradient(135deg, rgba(232, 71, 76, 0.5), rgba(232, 71, 76, 0.5) 25%, transparent 25%, transparent 50%, rgba(232, 71, 76, 0.5) 50%, rgba(232, 71, 76, 0.5) 75%, transparent 75%, transparent);
    background-repeat: repeat;
  }
  .form:not(.has-magic-focus) .customSelect.customSelectFocus, .form:not(.has-magic-focus) .customSelect:active, .form:not(.has-magic-focus) .select:active, .form:not(.has-magic-focus) .textarea:active, .form:not(.has-magic-focus) .text-input:active, .form:not(.has-magic-focus) .option-input + label:active, .form:not(.has-magic-focus) .checkbox-input + label:active, .form:not(.has-magic-focus) .customSelect:focus, .form:not(.has-magic-focus) .select:focus, .form:not(.has-magic-focus) .textarea:focus, .form:not(.has-magic-focus) .text-input:focus, .form:not(.has-magic-focus) .option-input + label:focus, .form:not(.has-magic-focus) .checkbox-input + label:focus {
    background: #4E4E4E;
  }
  
  .form .message {
    position: absolute;
    bottom: 0;
    right: 0;
    z-index: 100;
    font-size: 0.625em;
    color: white;
  }
  
  .form .option-input, .form .checkbox-input {
    border: 0;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
  }
  .form .option-input + label, .form .checkbox-input + label {
    display: inline-block;
    width: auto;
    color: #4E4E4E;
    position: relative;
    -webkit-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
            user-select: none;
    cursor: pointer;
  }
  .form .option-input:focus + label, .form .checkbox-input:focus + label, .form .option-input:active + label, .form .checkbox-input:active + label {
    color: #4E4E4E;
  }
  .form .option-input:checked + label, .form .checkbox-input:checked + label {
    color: white;
  }
  
  .form .button {
    font: inherit;
    line-height: normal;
    cursor: pointer;
    background: #E8474C;
    color: white;
    font-weight: bold;
    width: auto;
    margin-left: auto;
    font-weight: bold;
    padding-left: 2em;
    padding-right: 2em;
  }
  .form .button:hover, .form .button:focus, .form .button:active {
    color: white;
    border-color: white;
  }
  .form .button:active {
    position: relative;
    top: 1px;
    left: 1px;
  }
  
  body {
    padding: 2em;
  }
  
  .form {
    max-width: 40em;
    margin: 0 auto;
    position: relative;
    display: flex;
    flex-flow: row wrap;
    justify-content: space-between;
    align-items: flex-end;
  }
  .form .field {
    width: 100%;
    margin: 0 0 1.5em 0;
  }
  @media screen and (min-width: 40em) {
    .form .field.half {
      width: calc(50% - 1px);
    }
  }
  .form .field.last {
    margin-left: auto;
  }
  .form .textarea {
    max-width: 100%;
  }
  .form .select {
    text-indent: 0.01px;
    text-overflow: "" !important;
  }
  .form .select::-ms-expand {
    display: none;
  }
  .form .checkboxes, .form .options {
    padding: 0;
    margin: 0;
    list-style-type: none;
    overflow: hidden;
  }
  .form .checkbox, .form .option {
    float: left;
    margin: 1px;
  }
  .customSelect {
    pointer-events: none;
  }
  .customSelect:after {
    content: "";
    pointer-events: none;
    width: 0.5em;
    height: 0.5em;
    border-style: solid;
    border-color: white;
    border-width: 0 3px 3px 0;
    position: absolute;
    top: 50%;
    margin-top: -0.625em;
    right: 1em;
    transform-origin: 0 0;
    transform: rotate(45deg);
  }
  .customSelect.customSelectFocus:after {
    border-color: white;
  }
  .magic-focus {
    position: absolute;
    z-index: 0;
    width: 0;
    pointer-events: none;
    background: rgba(255, 255, 255, 0.15);
    transition: top 0.2s, left 0.2s, width 0.2s;
    -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
    transform-style: preserve-3d;
    will-change: top, left, width;
    transform-origin: 0 0;
  }
  ::placeholder{
      color:white;
  }
  .firmy{
      background: #222222;
      color: white;
  }
  select {
    min-width: 370px;
    min-height: 200px;
  }
  
    </style>
  
    
  <script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeConsoleRunner-7549a40147ccd0ba0a6b5373d87e770e49bb4689f1c2dc30cccc7463f207f997.js"></script>
  <script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-4793b73c6332f7f14a9b6bba5d5e62748e9d1bd0b5c52d7af6376f3d1c625d7e.js"></script>
  <script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRuntimeErrors-4f205f2c14e769b448bcf477de2938c681660d5038bc464e3700256713ebe261.js"></script>
  <style>.mM{display:block;border-radius:50%;box-shadow:0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);position:fixed;bottom:1em;right:1em;-webkit-transform-origin:50% 50%;transform-origin:50% 50%;-webkit-transition:all 240ms ease-in-out;transition:all 240ms ease-in-out;z-index:9999;opacity:0.75}.mM svg{display:block}.mM:hover{opacity:1;-webkit-transform:scale(1.125);transform:scale(1.125)}</style></head>
  
  <body>
    <?php
    if(isset($_GET["id"])){
      include_once("../conn.php");
      $sql = "SELECT events.id, events.name,events.description,events.time_start FROM events where events.id = ".$_GET["id"];
      $result = $conn->query($sql);

      if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
    ?>
    <form action="EditEvent.php" method="POST" class="form" id="<?php echo $_GET["id"]; ?>">
        
        <label class="label required" for="">Přidání Události</label>
        <p class="field required"></p>
    <p class="field required ">
        
      <label class="label required" for="name">Název</label>
      <input class="text-input" name="name" required="" type="text" value="<?php echo $row["name"]; ?>">
    </p>
    
    <p class="field">
        <label class="label" for="description">Popis</label>
        <textarea class="textarea" cols="50" name="description" rows="4"><?php echo $row["description"]; ?></textarea>
      </p>

      <div class="field half">
        <label class="label">Začátek Události</label>
        <?php
        if($row["time_start"] != null){
        $time_start = $row["time_start"];
        $parts = explode(" ",$time_start);
        $parts2 = explode(":",$parts[1]);
        $final_time = $parts[0]."T".$parts2[0].":".$parts2[1];
      }
      else {
        $final_time = "";
      }
        ?>
        <input class="text-input" name="time_start" type="datetime-local" value="<?php echo $final_time; ?>">
      </div>

      <div class="field half">
        
      </div>

    <p class="field half">
      <label class="label" for="password">Firmy</label>
      
      <select class="Firmy" name="firm_id" multiple>
      <?php
      $sql2 = "SELECT firm.name FROM firms_in_event inner join firm on firms_in_event.firm_id = firm.id where firms_in_event.event_id = ". $row["id"];
      $result2 = $conn->query($sql2);
      
      if ($result2->num_rows > 0) {
        while($row2 = $result2->fetch_assoc()) {
          ?>
          <option value="<?php echo $row2["name"]; ?>"><?php echo $row2["name"]; ?></option>
          <?php
        }
      } else {
        echo "0 results";
      }
      ?>            
  </select>
  <p class="field half">
   
  </p>
    </p>
    
    <p class="field ">
      <input class="button" type="submit" id="send-button" value="Upravit">
    </p>
    <p class="field half">
   
  </p>
  <p class="field half">
<<<<<<< HEAD
    <a  class="button"href="/table.php">Zpět</a>
=======
    <a  class="button"href="tableEvents.php">Zpět</a>
>>>>>>> c8198b739077f175aece836e97d5238b4c74687c
  </p>
  <p class="field half">
   
  </p>
  </form>
  <form action="rmEvent.php?id=<?php echo $_GET["id"]; ?>" method="POST" class="form">
    <p class="field half">
    </p>
  <p class="field half">
    <input class="button" type="submit" id="delete" value="Smazat"></input>
  </p>
  </form>
  
  <?php
    }
  }
    ?>
  
    
  <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.customSelect/0.5.1/jquery.customSelect.min.js"></script>
    <script src="https://cdpn.io/cpe/boomboom/pen.js?key=pen.js-b03f86d6-2f3e-cc9b-ec5e-0c681121e029" crossorigin=""></script><a href="https://codepen.io/mican/" target="_blank" class="mM"><svg width="32" height="32" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><title>codepen-logo</title><path d="M16 32C7.163 32 0 24.837 0 16S7.163 0 16 0s16 7.163 16 16-7.163 16-16 16zM7.139 21.651l1.35-1.35a.387.387 0 0 0 0-.54l-3.49-3.49a.387.387 0 0 0-.54 0l-1.35 1.35a.39.39 0 0 0 0 .54l3.49 3.49a.38.38 0 0 0 .54 0zm6.922.153l2.544-2.543a.722.722 0 0 0 0-1.018l-6.582-6.58a.722.722 0 0 0-1.018 0l-2.543 2.544a.719.719 0 0 0 0 1.018l6.58 6.579c.281.28.737.28 1.019 0zm14.779-5.85l-7.786-7.79a.554.554 0 0 0-.788 0l-5.235 5.23a.558.558 0 0 0 0 .789l7.79 7.789c.216.216.568.216.785 0l5.236-5.236a.566.566 0 0 0 0-.786l-.002.003zm-3.89 2.806a.813.813 0 1 1 0-1.626.813.813 0 0 1 0 1.626z" fill="#FFF" fill-rule="evenodd"></path></svg></a>
  
  
  </body></html>
  