<?php
use PHPMailer\PHPMailer\PHPMailer as PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;


$rdir = str_replace("\\", "/", __DIR__);  

require $rdir.'/PHPMailer/src/PHPMailer.php';
require $rdir.'/PHPMailer/src/Exception.php';
require $rdir.'/PHPMailer/src/SMTP.php';

include_once("../conn.php");

$result = $conn->query("SET names utf8s"); 
$sql = "SELECT * FROM events where time_start BETWEEN NOW() and DATE_ADD(NOW(), INTERVAL 2 DAY) order by time_start";
$result = $conn->query($sql);

if ($result->num_rows > 0) {





$mail = new PHPMailer(true);

$mail->SMTPDebug = SMTP::DEBUG_SERVER;                     
    $mail->isSMTP();                                           
    $mail->Host       = 'smtp.forpsi.com';                     
    $mail->SMTPAuth   = true;                                  
    $mail->Username   = 'crm@studujkdychces.cz';                    
    $mail->Password   = '8FyReW6PtVL@fv7';                               
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;           
    $mail->Port       = 465;                                    

    //Recipients
    $mail->setFrom('crm@studujkdychces.cz', 'CRM Ječná');
    $mail->addAddress('masopust@spsejecna.cz', );     
  /*  $mail->addAddress('ellen@example.com');               
    $mail->addReplyTo('info@example.com', 'Information');
    $mail->addCC('cc@example.com');
    $mail->addBCC('bcc@example.com');*/

    //Attachments
   // $mail->addAttachment('/var/tmp/file.tar.gz');        
   // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    

    //Content
    $mail->isHTML(true);                                 
    $mail->Subject = 'Nadcházejíci akce';

    $body_string = "";
  while($row = $result->fetch_assoc()) {
    $body_string .= $row["name"]. "(".$row["firm_id"]. "):". $row["description"]. "[". $row["time_start"]. " - ". $row["time_end"]. "] <br>";
  }

  $mail->Body   = $body_string;
  $mail->AltBody = $body_string;

  $mail->send();

  echo "Email sent!";
} else {
  echo "0 results";
}

?>
