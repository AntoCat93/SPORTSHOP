$(document).ready(ready);

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getSwimwear.php", //Relative or absolute path to file.php file
        data: {swim:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var swim=JSON.parse(response);
            var el="";
            for(var i=0;i<swim.length;i++){
                console.log(swim[i].Type);
                
                el+="<div class='product' id='p"+swim[i].ID+"'><div class='columnleft' id='name'><h2 class='productcolor'><a href=\""+swim[i].Page+">"+swim[i].Name+"</a></h2></div><div class='columnleft'><p class='description'>"+swim[i].Description+"</p></div><div class='columnright'><img class='imgproducts' src=\"images/"+swim[i].img+"></div></div>";             
                
            }
            
            $("div.swimwear").html(el);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}