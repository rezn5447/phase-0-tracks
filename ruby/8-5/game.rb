# Should figure out how to make score not a global variable....
  $score = 0 
  def quit(input)
  	if input == 'quit' || input == 'q' || input == 'exit'
  	  abort("Come back soon!")
    end
  end

  def dif_chk1(num)
	until num == "1" || num == "2" || num == "3"
  	  puts "Read the rules! use (1 or 2 or 3) for level!"
  	  num = gets.chomp
  	end
  	num
  end

  def dif_chk2(num2)
	until num2 == "10" || num2 == "15" || num2 == "20" 
  	  puts "Read the rules! use (10 or 15 or 20) for the number of problems you will complete!"
  	  num2 = gets.chomp
  	end
  	num2
  end

  def correct_chk(ans,prob)
	p prob
	user_ans = gets.chomp
	quit(user_ans)
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