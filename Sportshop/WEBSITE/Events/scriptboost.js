$(document).ready(ready);

var GIndex=1;

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getBoost.php", //Relative or absolute path to file.php file
        data: {boost:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var boost=JSON.parse(response);
            var el="";
            var location="";
            var date="";
            var event="";
            for(var i=0;i<boost.length;i++){
                console.log(boost[i].Type);
                
                el+="<div class='product1'><h1>"+boost[i].Name+"</h1><p class='description'>"+boost[i].LongDesc+"</p></div>"; 
                location+="<p>"+boost[i].Location+"</p><br/>";
                date+="<p>"+boost[i].Date+"</p><br/>";
                event += "<p>"+boost[i].Promotes+"</p>";
            }
            
            $("div.content").html(el);
            $("div#location").html(location);
            $("div#date").html(date);
            $("div#promotes").html(event);
            
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}