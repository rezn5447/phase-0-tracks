var colorsArray = ["blue", "magenta","rainbow", "gray"]
var horseNames = ["Sparkles", "Pinky Pie", "Twilight","Zelda"]

colorsArray.push("ombre")

horseNames.push("Shadowfax")



function giveHorsiesNames(ary1,ary2){

	var horse = {}
  for (i = 0; i <= ary1.length - 1; i++ ){
	horse[ary1[i]] = ary2[i]
}

console.log(horse)

}

giveHorsiesNames(horseNames,colorsArray)

function Car(color, brand){
 

 console.log("A new car just came off the lot")

this.color = color 
this.brand = brand
this.numOfWheels = 4
this.hasHorn = true

console.log("Look at that sweet " + this.color + " " + this.brand + "!")

 this.rev = function(){console.log("** VROOM VROOM **")}
}

var honda = new Car("red","Honda Civic")
honda.rev()