$(document).ready(ready);

var GIndex=1;

function animateGallery() {
    if(window.GIndex==3){
        window.GIndex=1;
    }else{
        window.GIndex++;
    }
    console.log(window.GIndex);

    $("#graphic").css("background-image","url('images/graphic"+window.GIndex+".jpg')");

}

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getGraphic.php", //Relative or absolute path to file.php file
        data: {graphic:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var graphic=JSON.parse(response);
            var el="";
            for(var i=0;i<graphic.length;i++){
                console.log(graphic[i].Type);
                
                el+="<div class='product1'><h1>"+graphic[i].Name+"</h1><p class='description'>"+graphic[i].LongDesc+"</p></div>";             
                
            }
            
            $("div.content").html(el);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

    setInterval(animateGallery, 4000);
}