$(document).ready(ready);

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getLatestEvents.php", //Relative or absolute path to file.php file
        data: {event:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var event=JSON.parse(response);
            var el="";
            for(var i=0;i<event.length;i++){
                console.log(event[i].Type);
                
                el+="<div class='event' id='e"+event[i].ID+"'><div class='columnleft' id='name'><h2 class='eventcolor'><a href=\""+event[i].Page+">"+event[i].Name+"</a></h2></div><div class='columnleft'><p class='description'>"+event[i].Description+"</p></div><div class='columnright'><img class='imgevent' src=\"images/"+event[i].img+"></div></div>";             
                
            }
            
            $("div.latestevents").html(el);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}