$(document).ready(ready);

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getProduct.php", //Relative or absolute path to file.php file
        data: {categories:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var categories=JSON.parse(response);
            var el="";
            for(var i=0;i<categories.length;i++){
                console.log(categories[i].Type);
                console.log(categories[i].img1);
                
                el+="<div class='product' id='p"+categories[i].id+"'><h2 class='productcolor'>"+categories[i].Type+"</h2><img class='imgcategories' src=\"images/"+categories[i].img1+"><img class='imgcategories' src=\"images/"+categories[i].img2+"></div>";             
                
            }
            
            $("div.tipodiprodotto").html(el);  
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}