console.log("Hey the script is running! Better catch it!")

function addPinkBorder(event){
	event.target.style.border = "2px solid pink";

}

function takeAwayPinkBorder(event){

	event.target.style.border = "none"
}

var photo = document.getElementById("headerimg");

photo.addEventListener("mouseenter",addPinkBorder)

photo.addEventListener("mouseleave",takeAwayPinkBorder)