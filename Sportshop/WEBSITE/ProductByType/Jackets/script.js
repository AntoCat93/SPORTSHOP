$(document).ready(ready);

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getJackets.php", //Relative or absolute path to file.php file
        data: {jackets:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var jackets=JSON.parse(response);
            var el="";
            for(var i=0;i<jackets.length;i++){
                console.log(jackets[i].Type);
                
                el+="<div class='product' id='p"+jackets[i].ID+"'><div class='columnleft' id='name'><h2 class='productcolor'><a href=\""+jackets[i].Page+">"+jackets[i].Name+"</a></h2></div><div class='columnleft'><p class='description'>"+jackets[i].Description+"</p></div><div class='columnright'><img class='imgproducts' src=\"images/"+jackets[i].img+"></div></div>";             
                
            }
            
            $("div.jackets").html(el);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}