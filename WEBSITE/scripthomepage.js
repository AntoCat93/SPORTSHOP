var GIndex=1;

$(document).ready(Ready);

function Ready(){

    console.log("I'm ready!");

    setInterval(animateGallery, 4000);
}

function animateGallery() {
    if(window.GIndex==8){
        window.GIndex=1;
    }else{
        window.GIndex++;
    }
    console.log(window.GIndex);

    $("#products").css("background-image","url(img/"+window.GIndex+".jpg)");

}