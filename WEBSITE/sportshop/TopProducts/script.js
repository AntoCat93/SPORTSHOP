$(document).ready(ready);

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getTopProducts.php", //Relative or absolute path to file.php file
        data: {top:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var top=JSON.parse(response);
            var el="";
            for(var i=0;i<top.length;i++){
                console.log(top[i].Type);
                
                el+="<div class='product' id='p"+top[i].ID+"'><div class='columnleft' id='name'><h2 class='productcolor'>"+top[i].Name+"</h2></div><div class='columnleft'><p class='description'>"+top[i].Description+"</p></div><div class='columnright'><img class='imgproducts' src=\"images/"+top[i].img+"></div></div>";             
                
            }
            
            $("div.topproducts").html(el);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}