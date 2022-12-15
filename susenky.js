$(document).ready( function () {

    var cookies = document.cookie.split(";");
    var cookie = "";
    for(const c of cookies){
        if(c.includes("search=")){
            cookie = c.split("=")[1];
            break;
        }
    }
    
      function Setcookie(value){
        const d = new Date();
        d.setTime(d.getTime() + (0.5*24*60*60*1000));
        let expires = "expires="+ d.toUTCString();
        document.cookie = "search="+ value+ ";"+ expires;
    }
    
        
} );