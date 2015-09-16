$(document).ready(ready);

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getShoes.php", //Relative or absolute path to file.php file
        data: {shoes:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var shoes=JSON.parse(response);
            var el="";
            for(var i=0;i<shoes.length;i++){
                console.log(shoes[i].Type);
                
                el+="<div class='product' id='p"+shoes[i].ID+"'><div class='columnleft' id='name'><h2 class='productcolor'><a href=\""+shoes[i].Page+">"+shoes[i].Name+"</a></h2></div><div class='columnleft'><p class='description'>"+shoes[i].Description+"</p></div><div class='columnright'><img class='imgproducts' src=\"images/"+shoes[i].img+"></div></div>";             
                
            }
            
            $("div.shoes").html(el);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}