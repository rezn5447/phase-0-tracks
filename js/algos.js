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

 
          // ================  DRIVER CODE   ================= // 



                   
var ary = ["longest phrase","longer phrase","something even longer"]
var dif_ary = ["Some","sentences","can sometimes be longer","than others"]

lgPhr(ary)
lgPhr(dif_ary)





var key1 = {name: "Steven", age: 54}
var key2 = {name: "Tamir", age: 54}
var key3 = {field:"Bioengeneering", name:"Randal", age:24}
var key4 = {occupation: "Student", name:"Steven", age:24}

         

keyMatch(key1,key3)
keyMatch(key1,key4)
keyMatch(key3,key4)



           // ================ END DRIVER CODE   ================= // 