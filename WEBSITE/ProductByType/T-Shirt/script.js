$(document).ready(ready);

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getShirt.php", //Relative or absolute path to file.php file
        data: {shirt:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var shirt=JSON.parse(response);
            var el="";
            for(var i=0;i<shirt.length;i++){
                console.log(shirt[i].Type);
                
                el+="<div class='product' id='p"+shirt[i].ID+"'><div class='columnleft' id='name'><h2 class='productcolor'>"+shirt[i].Name+"</h2></div><div class='columnleft'><p class='description'>"+shirt[i].Description+"</p></div><div class='columnright'><img class='imgproducts' src=\"images/"+shirt[i].img+"></div></div>";             
                
            }
            
            $("div.shirt").html(el);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}