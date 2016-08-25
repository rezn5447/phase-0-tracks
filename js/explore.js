// PSEUDOCODE
// Write a method called 'reverse'
// Input: STRING
// Steps:
// - create VARIABLE to store newReverse
// - ITERATE from the end of the string
// - newReverse will append each letter to the VARIABLE as STRING
// Output:
// - newReverse VARIABLE as STRING

// ========== END PSEUDOCODE ============ //



function reverse(str){
  newReverse = ''
  for(i = str.length-1; i >= 0; i--){
    newReverse = newReverse + str[i]
  }
  return newReverse
}

revStr = reverse("hello Yo Mamma")
revStr2 = reverse("Hey Whats Up Hello")




if (1 == 1){

	console.log(revStr)

} else {

	console.log(revStr2)
	
}

