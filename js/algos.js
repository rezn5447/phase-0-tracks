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
