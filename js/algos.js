          // ==============   PSEUDOCODE   ================ //


// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
// INPUT: ARRAY 
//  Steps:
// - ITERATE through to check each element in the array against the other elements, to make sure they are all compared to each other for being the longest
// Output: Longest element in the array


        // ==============  END PSEUDOCODE   ================ //


  function lgPhr(array){
    longest = ''
	for(var i = 0; i < (array.length); i++){
	  if (array[i].length > longest.length){
	    longest = array[i]
	  }
	}
	console.log(longest)
  }



          // ==============   PSEUDOCODE   ================ //

// write a function that takes two objects and checks to see if the objects share at least one key-value pair. 
// Input: Two Keys (Objects)
//  Steps:
// - ITERATE through both objects at the same time
// - IF a KEY in object #1 is the same as the KEY in object #2, post a Match 
// Output: TRUE IF there is a match, FALSE IF there is not 

          // ==============  END PSEUDOCODE   ================ //

  function keyMatch(k1,k2){
    var match = 0
    for (var key in k1 && k2){
      if (k1[key] == k2[key]) {
	    match += 1
	  }
    }
    if (match > 0) {console.log(true)}
	else {console.log(false)}
  }
          // ==============   PSEUDOCODE   ================ //

// Write a function that takes an integer for length, and builds and returns an array of the given length. This array will be populated with strings of a random length. (1 - 10)
// Input: INT
//  Steps:
// - Make empty array
// - Generate (INT) strings of random length
//     Steps:
//    - Make a letters VARIABLE to access letters from
//    - Use RANDOM FUNCTION to access the letters (1 to 10) times
//    - REPEAT this UNTIL INT number of TIMES
//    - Push the strings into the array
// Output: Array of INT length with (1 to 10) letters

          // ==============  END PSEUDOCODE   ================ //


  function rand_words(int){
    var alpha = "abcdefghijklmnopqrstuvwxyz"
    ary = []
  for(var i = 0; i < int; i++){
	var letters = ''
    rand = Math.floor((Math.random() * 10) + 1)
 	for(var k = 0; k < rand; k++){
 	  letters = letters + alpha.charAt(Math.floor((Math.random() * 26) + 1))
 	  }
 	  ary.push(letters)
   }
   	console.log(ary)
     return ary
 }

          // ================  DRIVER CODE   ================= // 




var ary = ["longest phrase","longer phrase","something even longer"]
var dif_ary = ["Some","sentences","can sometimes be longer","than others"]

lgPhr(ary)
lgPhr(dif_ary)


lgPhr(rand_words(9))



var key1 = {name: "Steven", age: 54}
var key2 = {name: "Tamir", age: 54}
var key3 = {field:"Bioengeneering", name:"Randal", age:24}
var key4 = {occupation: "Student", name:"Steven", age:24}

         
keyMatch(key1,key3)
keyMatch(key1,key4)
keyMatch(key3,key4)

                     // FINAL DRIVER CODE // 

 for(var i = 1; i < 10; i++){
	lgPhr(rand_words(6))
  }


     // ================ END DRIVER CODE   ================= // 
