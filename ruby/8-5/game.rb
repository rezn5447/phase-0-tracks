# Should figure out how to make score not a global variable....
  $score = 0 


 def correct_chk(ans,prob)
	p prob
	user_ans = gets.chomp
	if ans.to_s == user_ans
	  $score += 1
	else 
	  $score += 0
	end
	p $score
  end

  def calculate(operant)
	num1 = rand(10)
	num2 = rand(10)
	if operant == '*'
	  prob = "#{num1} * #{num2}"
	  ans = num1 * num2
	  correct_chk(ans,prob)
	elsif operant == '-'
	  prob = "#{num1} - #{num2}"
	  ans = num1 - num2
	  correct_chk(ans,prob)
	else operant == '+'
	  prob = "#{num1} + #{num2}"
	  ans = num1 + num2
	  correct_chk(ans,prob)
	end
  end

  def difficulty(level,problems)
  	i = 0
  	while i < problems
  	oper = (rand(level) + 1)
  	  if oper >= 3
 	   calculate('*')
	  elsif oper == 2
		calculate('-')
	  else
		calculate('+')
	  end	
		i += 1
    end
  end