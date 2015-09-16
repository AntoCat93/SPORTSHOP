$(document).ready(ready);

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getShorts.php", //Relative or absolute path to file.php file
        data: {shorts:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var shorts=JSON.parse(response);
            var el="";
            for(var i=0;i<shorts.length;i++){
                console.log(shorts[i].Type);
                
                el+="<div class='product' id='p"+shorts[i].ID+"'><div class='columnleft' id='name'><h2 class='productcolor'><a href=\""+shorts[i].Page+">"+shorts[i].Name+"</a></h2></div><div class='columnleft'><p class='description'>"+shorts[i].Description+"</p></div><div class='columnright'><img class='imgproducts' src=\"images/"+shorts[i].img+"></div></div>";             
                
            }
            
            $("div.shorts").html(el);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}