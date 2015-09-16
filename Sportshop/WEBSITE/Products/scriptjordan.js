$(document).ready(ready);

var GIndex=1;

function animateGallery() {
    if(window.GIndex==3){
        window.GIndex=1;
    }else{
        window.GIndex++;
    }
    console.log(window.GIndex);

    $("#jordan").css("background-image","url('images/jordan"+window.GIndex+".jpg')");

}

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getJordan.php", //Relative or absolute path to file.php file
        data: {jordan:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var jordan=JSON.parse(response);
            var el="";
            var event="";
            for(var i=0;i<jordan.length;i++){
                console.log(jordan[i].Type);
                
                el+="<div class='product1'><h1>"+jordan[i].Name+"</h1><p class='description'>"+jordan[i].LongDesc+"</p></div>";             
                event += "<p>"+jordan[i].Event+"</p>";
            }
            
            $("div.content").html(el);
            $("div.evento").html(event);
            
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

    setInterval(animateGallery, 4000);
}