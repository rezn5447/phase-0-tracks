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
