$(document).ready(ready);

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getTrousers.php", //Relative or absolute path to file.php file
        data: {trousers:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var trousers=JSON.parse(response);
            var el="";
            for(var i=0;i<trousers.length;i++){
                console.log(trousers[i].Type);
                
                el+="<div class='product' id='p"+trousers[i].ID+"'><div class='columnleft' id='name'><h2 class='productcolor'>"+trousers[i].Name+"</h2></div><div class='columnleft'><p class='description'>"+trousers[i].Description+"</p></div><div class='columnright'><img class='imgproducts' src=\"images/"+trousers[i].img+"></div></div>";             
                
            }
            
            $("div.trousers").html(el);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}