$(document).ready(ready);

var GIndex=1;

function ready(){
    console.log("I'm ready!");
    var id=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getJordanBrand.php", //Relative or absolute path to file.php file
        data: {jordan:id},
        success: function(response) {
            console.log(JSON.parse(response));
            var jordan=JSON.parse(response);
            var el="";
            var location="";
            var date="";
            var event="";
            for(var i=0;i<jordan.length;i++){
                console.log(jordan[i].Type);
                
                el+="<div class='product1'><h1>"+jordan[i].Name+"</h1><p class='description'>"+jordan[i].LongDesc+"</p></div>"; 
                location+="<p>"+jordan[i].Location+"</p><br/>";
                date+="<p>"+jordan[i].Date+"</p><br/>";
                event += "<p>"+jordan[i].Promotes+"</p>";
            }
            
            $("div.content").html(el);
            $("div#location").html(location);
            $("div#date").html(date);
            $("div#promotes").html(event);
            
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}