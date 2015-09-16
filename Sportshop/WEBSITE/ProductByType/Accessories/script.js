$(document).ready(ready);

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getAccessories.php", //Relative or absolute path to file.php file
        data: {accessories:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var accessories=JSON.parse(response);
            var el="";
            for(var i=0;i<accessories.length;i++){
                console.log(accessories[i].Type);
                
                el+="<div class='product' id='p"+accessories[i].ID+"'><div class='columnleft' id='name'><h2 class='productcolor'><a href=\""+accessories[i].Page+">"+accessories[i].Name+"</a></h2></div><div class='columnleft'><p class='description'>"+accessories[i].Description+"</p></div><div class='columnright'><img class='imgproducts' src=\"images/"+accessories[i].img+"></div></div>";             
                
            }
            
            $("div.accessories").html(el);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}